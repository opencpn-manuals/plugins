#!/bin/bash
#
# Build an website using Antora and deploy to Github Pages
#
# Configuration:
#     Needs GITHUB_TOKEN in environment, usually using something like
#         env:
#           GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
#
# Optional support for source-state.sh which basically replaces
# git submodules. Required since isomorphic-git, used by Antora,
# does not support submodules.

set -xe

# Some hard-coded assumptions:
readonly PLAYBOOK='site.yml'       # The Antora playbook
readonly SITE_DIR='docs'           # Antora output directory
readonly GP_BRANCH='gh-pages'      # Branch used as input by Github Pages

# Install npm and antora
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y nodejs
npm -v
npm i -g @antora/cli@3.1 @antora/site-generator-default@3.1
antora -v

# Update dependencies and build site
if [ -f source-state.sh ]; then ./source-state.sh restore; fi
antora $PLAYBOOK
touch $SITE_DIR/.nojekyll

# Set up a git environment in $SITE_DIR
orig_subject=$(git log -1 --oneline $FETCH_HEAD)
author_email=$(git log -1 --pretty=format:"%ae")
cd $SITE_DIR
git init -b pages
git remote add origin \
    https://$GITHUB_ACTOR:$GITHUB_TOKEN@github.com/$GITHUB_REPOSITORY
git config --local user.email "$author_email"
git config --local user.name "$GITHUB_ACTOR"

# Commit changes and push to $GP_BRANCH
git add --all .
git fetch origin $GITHUB_SHA
msg="[CI] Updating gh-pages branch from ${GITHUB_SHA:0:8}"
if [[ "$orig_subject" == *full?linkcheck* ]]; then
    msg="[full-linkcheck] $msg"
fi
git commit -q -m "$msg"

git push -f origin pages:$GP_BRANCH

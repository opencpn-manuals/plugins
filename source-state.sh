#!/bin/bash

#
# Some pidgin git submodules mockup. Allows all included plugin
# directories to be represented by their url and commit.
#
# Arguments: an operation, mandatory, one of:
#
#   - restore: fetches and checkout all repos listed in statefile
#   - save: Save state of all plugin repos in statefile
#   - update: Update all plugin repos to latest version (does not save!).
#
# Files:
#   sources.state: directory, url and commit for plugin sources.
#


here=$(readlink -fn $(dirname $0))
statefile="$here/sources.state"
test -d $here/sources || mkdir $here/sources

cd $here/sources
git config advice.detachedHead false
case "$1" in
    restore) 
        while true; do
            read dir url commit || exit 0
            test -d $dir || git clone $url
            cd $dir
            git fetch origin $commit
            git checkout FETCH_HEAD
            cd ..
        done < $statefile
        ;;

    update)
        for dir in $(find . -maxdepth 1 -mindepth 1 -type d); do
            cd $dir
            git remote update origin
            head=$(git rev-parse refs/remotes/origin/HEAD)
            git checkout $head
            cd ..
        done
        ;;

    save)
        rm -f $statefile
        for dir in $(find . -maxdepth 1 -mindepth 1 -type d); do
            cd $dir
            url=$(git remote show origin | awk '/Fetch URL/ {print $3}')
            echo $dir $url $(git rev-parse HEAD) >> $statefile
            cd ..
        done
        ;;

    *) echo 'Usage: $0: <save | restore | update>'
        ;;
esac

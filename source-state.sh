#!/bin/bash

# Usage:
#     source-state.sh <update | restore> [plugins...]
#     source-state.sh save
#
# A primitive git submodules replacement, used since
# isomorphic-git does not support git submodules.
#
# Script handles a number of external git repos which are part of
# the build. All repos lives in the sources/ directory.
#
# The sources.state file is used to record the state of the repos. Each
# repo is defined by a name, url and commit in this file.
#
# <command> is one of:
#   - restore: Fetch and checkout repos listed in sources.state
#   - update: Update plugin repos to latest version (does not save!).
#   - save: Save state of all plugin repos in sources.state
#
# [plugin] is one or more plugins listed in sources.state. By default,
# operation applies to all known plugins.
#
# Files:
#   sources.state:
#       directory, url and commit for plugin sources.
#   sources:
#       base directory for plugin sources

usage() {
    cat << EOF
Usage:
    source-state.sh restore [plugin...]
    source-state.sh update [plugin...]
    source-state.sh save
EOF
}

here=$(readlink -fn $(dirname $0))
statefile="$here/sources.state"

cd $here
test -d $here/sources || mkdir $here/sources
test -f $here/sources/.gitkeep || touch $here/sources/.gitkeep


skip_dir() {
    if [[ " ${dirs[@]} " =~ " $1 " ]]; then
        return 1
    else
        return 0
    fi
}


cleanup_clone() {
    if test -f .git/info/sparse-checkout; then return; fi
    for f in *; do
        case $f in
            manual|antora.yml|modules|ci) true ;;
            *) rm -rf $f
        esac
    done
}

git_clone() {
    vers=$(git --version)
    if [[ "$vers" == *2.[345][0-9].* ]]; then   # > 2.30
        git clone --depth 1 --filter=blob:none --sparse $1
        cd $2
        git sparse-checkout set manual antora.yml modules ci
    else
        git clone --depth 2 $1
        cd $2
        cleanup_clone
    fi
    cd ..
}


command=$1
if [ $# -eq 0 ]; then
    command='foo'
elif [ $# -gt 1 ]; then
    shift
    dirs=("$@")
else
    dirs=()
    for d in $(awk '{sub(/\.\//, ""); print $1}' sources.state); do
        dirs+=(${d#*/})
    done
fi

if [[ "$command" = 'save' && $# -gt 1 ]]; then
    echo "save does not permit explicit  plugin list"
    exit 1
fi

cd $here/sources
git config --global advice.detachedHead false
case "$command" in
    restore)
        while true; do
            read dir url commit || exit 0
            if skip_dir ${dir##*/}; then continue; fi
            echo "Restoring into ${dir##*/}"
            test -d $dir || git_clone $url $dir
            cd $dir
            git fetch origin $commit
            git checkout -q FETCH_HEAD
            cd ..
        done < $statefile
        ;;

    update)
        for dir in $(find . -maxdepth 1 -mindepth 1 -type d); do
            if skip_dir ${dir##*/}; then continue; fi
            cd $dir
            echo -n "$dir: "
            git remote update origin
            head=$(git rev-parse refs/remotes/origin/HEAD)
            git checkout $head
            cleanup_clone
            cd ..
        done
        ;;

    save)
        rm -f $statefile
        for dir in $(find . -maxdepth 1 -mindepth 1 -type d | sort -f); do
            url=$(git -C $dir config remote.origin.url)
            echo ${dir#./} $url $(git -C $dir rev-parse HEAD) >> $statefile
        done
        ;;

    *) usage >&2
        ;;
esac

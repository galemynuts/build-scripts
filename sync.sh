#!/bin/sh

if command -v repo >/dev/null 2>&1; then
    :
else
    echo "Repo isn't installed on your system."
    exit 1
fi

echo "Enter manifest url: "
read manifesturl

echo "Enter amount of threads to use: "
read jvalue

echo "Enter the manifest's branch name you want to use: "
read branch

repo init -u $manifesturl -b $branch --git-lfs
repo sync -c --no-clone-bundle --optimized-fetch --prune --force-sync -j$jvalue

#!/bin/bash

echo "run deploy.sh"

# run deploy

site=$1

if [[ $site == '' ]];
then
    echo "[ERROR] not web Argument"
    exit 0
fi

echo "deploy "$site

cd "$site"
for d in */ ; do
    cd $d
    ./deploy.sh
done

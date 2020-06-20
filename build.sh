#!/bin/bash

echo "build static files"

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
    if [ `echo $child| grep -c "vue" ` -gt 0 ]
        cd "vue"
        echo "build vue"
        npm run build
    then
    fi
    if [ `echo $child| grep -c "hugo" ` -gt 0 ]
        cd "hugo"
        echo "build hugo"
        hugo
    then
    fi
done

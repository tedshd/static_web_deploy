#!/bin/sh

echo "build static files"

# run deploy

site=$1

if [[ $site == '' ]];
then
    echo "[ERROR] not web Argument"
    exit 0
fi

echo "build "$site

cd "$site"
for d in */ ; do
    if [ `echo $d| grep -c "vue" ` -gt 0 ]
    then
        cd "vue"
        echo "build vue"
        npm run build
    fi
    if [ `echo $d| grep -c "hugo" ` -gt 0 ]
    then
        cd "hugo"
        echo "build hugo"
        hugo
    fi
done

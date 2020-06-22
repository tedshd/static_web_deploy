#!/bin/sh

echo "run npm_install.sh"

for d in */ ; do
    for child in  "./"$d*/ ; do
        if [ `echo $child| grep -c "vue" ` -gt 0 ]
        then
            echo $d
            cd "$child"
            npm install . --save-dev
        fi
    done
done

#!/bin/bash

echo "run init.sh"

# init develop env & build submodule

git submodule add git@github.com:bizny/www.bizny.app.git bizny/vue/dist
git submodule add git@github.com:photogrid/photogrid.github.io.git blog/hugo/public
git submodule add git@github.com:photogridplus/www.grid.plus.git plus/hugo/public
git submodule add git@github.com:vidoapp/www.vido-app.com.git vido/vue/dist

git submodule update --init --recursive

# install node package

for d in */ ; do
    for child in  "./"$d*/ ; do
        if [ `echo $child| grep -c "vue" ` -gt 0 ]
        then
            cd "$child"
            npm install . --save-dev
            cd ../../
        fi
    done
done

#!/bin/bash

# install hugo
if [ `uname` == 'Linux' ];
then
    distribution=$(lsb_release -a)
    if [ `echo $distribution | grep -c "Ubuntu" ` -gt 0 ]
    then
        echo 'OS: Ubuntu'
        if ! hash node 2>/dev/null
        then
            echo "install: node"
            sudo apt-get install -y nodejs
            sudo apt-get install npm
        else
            echo "node has installed"
        fi
        if ! hash hugo 2>/dev/null
        then
            echo "install: hugo"
            sudo apt-get install hugo
        else
            echo "hugo has installed"
        fi
    else
        echo 'Not Ubuntu Linux, stop run'
        exit 0
    fi
else
    echo 'OS: Mac'
    if ! hash node 2>/dev/null
    then
        echo "install: node"
        brew install node
    else
        echo "node has installed"
    fi
    if ! hash hugo 2>/dev/null
    then
        echo "install: hugo"
        brew install hugo
    else
        echo "hugo has installed"
    fi
fi

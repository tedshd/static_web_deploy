#!/bin/bash

path="$(pwd)"

docker run -idt --name static_web -v $path:/web/ static_web


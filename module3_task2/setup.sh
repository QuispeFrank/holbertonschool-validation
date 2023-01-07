#!/bin/bash

# 1
apt-get update && apt-get install -y wget make
apt-get install markdown -y
apt-get install zip -y
#npm install markdownlint --save-dev
npm install markdownlint-cli -g -y
wget https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_Linux-64bit.tar.gz
tar -xvf hugo_extended_0.109.0_Linux-64bit.tar.gz hugo
mv hugo /usr/local/bin/
rm hugo_extended_0.109.0_Linux-64bit.tar.gz

# 2
make build

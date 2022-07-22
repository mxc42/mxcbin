#!/usr/bin/env zsh
#https://gist.github.com/MeLlamoPablo/0abcc150c10911047fd9e5041b105c34

sudo rm -f /usr/bin/node
sudo rm -f /usr/bin/npm
sudo ln -s $(which node) /usr/bin/
sudo ln -s $(which npm) /usr/bin/

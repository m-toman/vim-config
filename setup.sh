#!/bin/bash

ln -s $PWD ~/.vim
ln -s $PWD/vimrc ~/.vimrc

mkdir swapfiles
cd pack
bash install.sh

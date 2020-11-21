#!/bin/bash
sudo apt-get update
sudo apt-get install curl
sudo apt-get install global
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/777bareman777/my-vim-setting

cp my-vim-setting/vimrc ~/.vimrc
rm -rf my-vim-setting

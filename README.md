# my-vim-setting

## OS x

- https://raw.githubusercontent.com/777bareman777/my-vim-setting/master/install-vim-mac.sh

```
#!/bin/bash
brew update
brew install curl
brew install global
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/777bareman777/my-vim-setting

cp my-vim-setting/vimrc ~/.vimrc
rm -rf my-vim-setting
```

## Ubuntu

- https://raw.githubusercontent.com/777bareman777/my-vim-setting/master/install-vim-ubuntu.sh

```
#!/bin/bash
sudo apt-get update
sudo apt-get install curl
sudo apt-get install global
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/777bareman777/my-vim-setting

cp my-vim-setting/vimrc ~/.vimrc
rm -rf my-vim-setting
```

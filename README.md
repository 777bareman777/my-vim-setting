# my-vim-setting

## OS x

- https://raw.githubusercontent.com/777bareman777/my-vim-setting/master/install-vim-mac.sh

```
#!/bin/bash
#

brew update
brew install curl
brew install global
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/777bareman777/my-vim-setting

cp my-vim-setting/.vimrc-mac ~/.vimrc
rm -rf my-vim-setting
vim +PluginInstall +qall
```

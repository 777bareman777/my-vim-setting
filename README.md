# my-vim-setting

## OS x

- https://github.com/777bareman777/my-vim-setting/blob/master/install-vim-mac.sh

```
#!/bin/bash
#

brew update
brew install curl
brew install global
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
git clone https://github.com/777bareman777/my-vim-setting

cp my-vim-setting/.vimrc-mac ~/.vimrc
rm -rf my-vim-setting
vim +PluginInstall +qall
```

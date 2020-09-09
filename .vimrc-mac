filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' " vim 플러그인 관리 플러그인

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
Plugin 'vim-airline/vim-airline'                                  " Vim 사용자의 하단 상태바를 변경한다.
Plugin 'airblade/vim-gitgutter'                                   " 기호 열에 git diff를 표시할 수 있는 플러그인
Plugin 'scrooloose/syntastic'                                     " 각종 언어 문법 체크 해주는 플러그인
Plugin 'scrooloose/nerdtree'                                      " 트리형태로 디렉터리를 보여주는 플러그인
Plugin 'ctrlpvim/ctrlp.vim'                                       " vim내에서 파일을 쉽게 검색해서 해당 파일을 열게 해주는 플러그인

call vundle#end()            " required

"filetype plugin indent on    " required
"NERDTree ON 단축키를 "\nt"로 설정
map <Leader>nt <ESC>:NERDTree<CR>
let NERDTreeShowHidden=1
" let NERDTreeQuitOnOpen=1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|vendor$',
    \ 'file': '\v\.(exe|so|dll)$'
\ }





" OS 클립 보드와 VI register 공용해서 사용하기
set clipboard=unnamed

" 라인 숫자 보여주기"
set number

"Source Explorer 환경설정
nmap <C-H> <C-W>h               "왼쪽 창으로 이동
nmap <C-J> <C-W>j               "아래 창으로 이동
nmap <C-K> <C-W>k               "윗 창으로 이동
nmap <C-L> <C-W>l               "오른쪽 창으로 이동

" 검색 설정
set ignorecase

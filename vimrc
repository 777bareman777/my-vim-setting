set nocompatible              " be iMproved, required
filetype plugin indent on " required

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')


" All of your Plugins must be added before the following line
Plug 'vim-airline/vim-airline'              " Vim 사용자의 하단 상태바를 변경한다.
Plug 'airblade/vim-gitgutter'               " 기호 열에 git diff를 표시할 수 있는 플러그인
Plug 'scrooloose/syntastic'                 " 각종 언어 문법 체크 해주는 플러그인
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'                   " vim내에서 파일을 쉽게 검색해서 해당 파일을 열게 해주는 플러그인
Plug 'tpope/vim-fugitive'                   " branch of powerline


" Initialize plugin system
call plug#end()


"filetype plugin indent on    " required
"NERDTree ON 단축키를 "\nt"로 설정
map <Leader>nt <ESC>:NERDTree<CR>
let NERDTreeShowHidden=1
" let NERDTreeQuitOnOpen=1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|vendor$',
    \ 'file': '\v\.(exe|so|dll)$'
\ }


" Tag List 환경설정
filetype on                                 "vim filetype on

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

"Source Explorer 환경설정
nmap <C-H> <C-W>h               "왼쪽 창으로 이동
nmap <C-J> <C-W>j               "아래 창으로 이동
nmap <C-K> <C-W>k               "윗 창으로 이동
nmap <C-L> <C-W>l               "오른쪽 창으로 이동

" Vim내 파이썬 자동실행 단축키 설정
imap <F5> <Esc>:w<CR>:!clear;python %<CR>
nmap <F5> <Esc>:w<CR>:!clear;python %<CR>



"세부 정보 출력
set nu                          "줄 번호를 보여줌
set title                       "타이틀바에 현재 편집중인 파일 표시
set showmatch                   "매치되는 괄호의 반대쪽을 보여줌
set ruler                       "상태표시줄에 커서 위치를 보여줌

" 구문 강조 사용
if has("syntax")
 syntax on
endif

" 색깔 설정
set t_Co=256

"들여쓰기 설정
set autoindent                "탭으로 눌러만든 들여쓰기 유지해줌
set smartindent               "편집중의 코드의구문/스타일의 들여쓰기를 유지해줌
set tabstop=4                 "탭 간격 4로 설정
set shiftwidth=4              "자동 들여쓰기 간격 4로 설정
set softtabstop=4             " 텍스트 편집중에 tab키를 눌렀을 때 지정된 숫자만큼 스페이스를 입력한다.
set smarttab                  "탭과 백 스페이스 키의 동작을 보조해줌
set expandtab                 "Insert 모드에서 탭키를 누르면 탭이 아니라 스페이스를 입력한다.

"커서가 있는 줄을 강조한다.
set cursorline

"찾기에서 대/소문자를 구별하지 않는다.
set ignorecase

" 상태바 표시를 항상한다
set laststatus=2
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

" OS 클립 보드와 VI register 공용해서 사용하기
set clipboard=unnamed

" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

" Markdown 문법 설정 (Git 에서 사용)
augroup markdown
    " remove previous autocmds
    autocmd!
    " set every new or read *.md buffer to use the markdown filetype
    autocmd BufRead,BufNew *.md setf markdown
augroup END

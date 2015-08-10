if &compatible
    set nocompatible
endif

let mapleader=","
let g:mapleader=","

set number
set numberwidth=4
set showmatch
set showmode
set showcmd
set ruler
set title
set wildmenu
set wildmode=list:longest,full
set colorcolumn=80

set esckeys
set ignorecase
set smartcase
set smartindent
set smarttab
set backspace=indent,eol,start
set autoindent

set tabstop=4
set shiftwidth=4
set expandtab

set nobackup
set nowb
set noswapfile

syntax on

set autoread

set hlsearch
set incsearch

set confirm

set history=100
set undolevels=100

set lazyredraw

set laststatus=2
set statusline=\ %F\ %m%r%h%w\ %=%({%{&ff}\|%{(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\")}%k\|%Y}%)\ %([%l,%v][%p%%]\ %)

" ========
filetype off

set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'wincent/Command-T'
Plugin 'mileszs/ack.vim'
Plugin 'jimenezrick/vimerl'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'Raimondi/delimitMate'
Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'
Plugin 'raymond-w-ko/vim-niji'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'mattn/emmet-vim'
Plugin 'mhinz/vim-startify'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'

call vundle#end()

filetype plugin on
filetype indent on
" =======

let g:syntastic_javascript_checkers = ['gjslint', 'jshint']

let &t_Co=256
let g:solarized_termcolors=256
let g:solarized_termtrans=1

set background=light
colorscheme solarized

set wildignore=*.beam,*.pyc

let g:gitgutter_max_signs=7777

set list
set listchars=tab:\➪\ 

map <leader>\           :tabnew<cr>
map <leader>1           :tabnext 1<cr>
map <leader>2           :tabnext 2<cr>
map <leader>3           :tabnext 3<cr>
map <leader>4           :tabnext 4<cr>
map <leader>5           :tabnext 5<cr>
map <leader>6           :tabnext 6<cr>
map <leader>7           :tabnext 7<cr>

map <leader><tab>       :set noexpandtab<cr>
map <leader><space>     :set expandtab<cr>


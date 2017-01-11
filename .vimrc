if &compatible
    set nocompatible
endif

let mapleader=","

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
" set nowrap

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
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Raimondi/delimitMate'
Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'
Plugin 'raymond-w-ko/vim-niji'
Plugin 'mhinz/vim-startify'
Plugin 'scrooloose/nerdtree'
Plugin 'easymotion/vim-easymotion'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'vim-erlang/vim-erlang-compiler'
Plugin 'vim-erlang/vim-erlang-omnicomplete'
Plugin 'tComment'
" Plugin 'latex-box-team/latex-box'

call vundle#end()

filetype plugin on
filetype indent on
" =======

let g:syntastic_javascript_checkers = ['gjslint', 'jshint']
let g:syntastic_erlang_checkers = ['escript']
let g:syntastic_cpp_checkers = ['cpplint', 'gcc']
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let &t_Co=256
let g:solarized_termcolors=256
let g:solarized_termtrans=1

set background=dark
colorscheme solarized

set wildignore=*.beam,*.pyc

let g:gitgutter_max_signs=7777

set list
set listchars=tab:\|\ 

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

let g:CommandTFileScanner = "git"

autocmd BufRead,BufNewFile *.erl,*.hrl,*.config set tabstop=4
autocmd BufRead,BufNewFile *.erl,*.hrl,*.config set shiftwidth=4
autocmd BufRead,BufNewFile *.erl,*.hrl,*.config set expandtab
autocmd BufRead,BufNewFile *.erl,*.hrl,*.config set filetype=erlang
autocmd BufRead,BufNewFile *.erl,*.hrl,*.config hi erlangBIF ctermfg=64 cterm=bold
autocmd BufRead,BufNewFile *.erl,*.hrl,*.config hi erlangBoolean ctermfg=64 cterm=bold
autocmd BufRead,BufNewFile *.erl,*.hrl,*.config hi erlangVariable ctermfg=61 cterm=bold

autocmd BufRead,BufNewFile *.py set tabstop=4
autocmd BufRead,BufNewFile *.py set shiftwidth=4
autocmd BufRead,BufNewFile *.py set expandtab

autocmd BufRead,BufNewFile *.cpp,*.h set tabstop=2
autocmd BufRead,BufNewFile *.cpp,*.h set shiftwidth=2
autocmd BufRead,BufNewFile *.cpp,*.h set expandtab

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_register_as_syntastic_checker = 1
let g:Show_diagnostics_ui = 1
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1


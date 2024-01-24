set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set ai
set number
set nowrap
set ruler
set hlsearch
set nocompatible

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif

call plug#begin()

Plug 'dikiaap/minimalist'
Plug 'sheerun/vim-polyglot'

call plug#end()

set t_Co=256
syntax on
colorscheme minimalist
highlight Comment ctermfg=green

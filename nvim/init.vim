" Disable any compat settings
set nocompatible

" Convenience for insert mode
imap jj <Esc>
vmap vv <Esc>

" Set the leader key to baus status
let mapleader=","

" Show line numbers
set number

" Fucking swapfiles please
set nobackup

" Honestly for now it's 2 until I get Go aand other stuff set up
set expandtab shiftwidth=2 tabstop=2

" Split to the right and below by default
set splitright
set splitbelow

call plug#begin() 

Plug 'scrooloose/nerdtree' " file tree
Plug 'tpope/vim-fugitive' " git utilities

" Color schemes
Plug 'nightsense/vim-crunchbang'
Plug 'sickill/vim-monokai'
Plug 'junegunn/seoul256.vim'
Plug 'exitface/synthwave.vim'
Plug 'zcodes/vim-colors-basic'
call plug#end() 

" Set to 16M color and use crnchbang
set termguicolors
colorscheme basic-dark

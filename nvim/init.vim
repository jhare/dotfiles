" Disable any compat settings
set nocompatible

" Convenience for insert mode
imap jj <Esc>
vmap vv <Esc>

" Set the leader key to baus status
let mapleader=","

" Fucking swapfiles please
set nobackup

" Tired of line wrapping
set nowrap

" Honestly for now it's 2 until I get Go aand other stuff set up
set expandtab shiftwidth=2 tabstop=2

" Split to the right and below by default
set splitright
set splitbelow

call plug#begin() 

Plug 'scrooloose/nerdtree' " file tree
Plug 'tpope/vim-fugitive' " git utilities

Plug 'vim-airline/vim-airline' " neato statusline
Plug 'vim-airline/vim-airline-themes' " and its themes

Plug 'neomake/neomake' " linter

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

" Set theme for statusline
let g:airline_theme='bubblegum'

" Keybindings
map <leader>n :NERDTreeToggle<CR>

" Settings for linter
let g:neomake_javascript_enabled_makers = ['eslint']

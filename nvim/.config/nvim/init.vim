" Disable any compat settings
set nocompatible

" Convenience for insert mode
imap jj <Esc>
vmap vv <Esc>

" Set the leader key to baus status
let mapleader=","

" Fucking swapfiles please
set nobackup

" Turn off swapfile
set noswapfile

" Tired of line wrapping
set nowrap

" Honestly for now it's 2 until I get Go aand other stuff set up
set expandtab shiftwidth=2 tabstop=2 " TODO: Put this in an au for .js

" Split to the right and below by default
set splitright
set splitbelow

call plug#begin() 

Plug 'scrooloose/nerdtree' " file tree
Plug 'tpope/vim-fugitive' " git utilities
Plug 'tpope/vim-surround' " change surrounding

" from Linode tutorial
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'inducer/pudb'

Plug 'vim-airline/vim-airline' " neato statusline
Plug 'vim-airline/vim-airline-themes' " and its themes
Plug 'w0rp/ale' " asynchronous linter
Plug 'leafgarland/typescript-vim' " linter for typescript
Plug 'Quramy/tsuquyomi'
Plug 'Shougo/vimproc.vim' " parallel vim processing

" systems, rust etc
Plug 'rust-lang/rust'
Plug 'vim-autoformat/vim-autoformat'

" Color schemes
Plug 'jhare/vim-crunchbang'
Plug 'sickill/vim-monokai'
Plug 'junegunn/seoul256.vim'
Plug 'exitface/synthwave.vim'
Plug 'zcodes/vim-colors-basic'

" Python stuff
Plug 'python-mode/python-mode', {'branch': 'develop'} " this really catches everything
call plug#end() 

" Set to 16M color and use crnchbang
set termguicolors
colorscheme basic-dark

" Set theme for statusline
let g:airline_theme='bubblegum'

" Keybindings
map <leader>n :NERDTreeToggle<CR>
map <leader>f :silent! Autoformat<CR>

" Settings for linter
let g:neomake_javascript_enabled_makers = ['eslint']

set mouse=a

" Rust settings
let g:formatdef_rustfmt = '"rustfmt"'
let g:formatters_rust = ['rustfmt']

" Do not enter new comment on next line if you have entered one on current.
" Done with that annoyance. I'll add the // when I need it.
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

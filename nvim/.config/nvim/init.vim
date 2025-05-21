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

call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree' " file tree

" tpope
Plug 'tpope/vim-fugitive' " git utilities
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'

" python debugger
Plug 'inducer/pudb'
Plug 'python-mode/python-mode', {'branch': 'develop'} " this really catches everything

" AI Stuff
Plug 'github/copilot.vim'

Plug 'vim-airline/vim-airline' " neato statusline
Plug 'vim-airline/vim-airline-themes' " and its themes

" Color schemes
Plug 'jhare/vim-crunchbang'
Plug 'sickill/vim-monokai'
Plug 'junegunn/seoul256.vim'
Plug 'exitface/synthwave.vim'
Plug 'zcodes/vim-colors-basic'

" Javascript formatting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/vim-jsx-improve'
Plug 'neoclide/coc.nvim', {'branch': 'release'} " remember to run :CocInstall coc-tsserver
Plug 'MunifTanjim/prettier.nvim' " remember to run :CocInstall coc-prettier
call plug#end()

" Set to 16M color and use crnchbang
set termguicolors
colorscheme basic-dark

" Set theme for statusline
let g:airline_theme='bubblegum'

" Keybindings
map <leader>n :NERDTreeToggle<CR>
map <leader>f :silent! Autoformat<CR>

" I use the mouse sometimes. Ironically, it works really well.
set mouse=a

" Javascript setup
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript", "typescript", "tsx", "json" },
  highlight = {
    enable = true,
  },
}
EOF

" Prettier mapping
map <leader>f :Prettier<CR>

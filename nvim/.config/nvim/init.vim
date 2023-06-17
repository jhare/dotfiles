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

" Core/pope
Plug 'Shougo/vimproc.vim' " parallel vim processing
Plug 'scrooloose/nerdtree' " file tree
Plug 'tpope/vim-fugitive' " git utilities
Plug 'tpope/vim-surround' " change surrounding

" from Linode tutorial
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'inducer/pudb'

Plug 'vim-airline/vim-airline' " neato statusline
Plug 'vim-airline/vim-airline-themes' " and its themes
Plug 'Shougo/deol.nvim'
Plug 'Quramy/tsuquyomi'

" Bigtime Conquer of Completion setup
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }

" Plug 'w0rp/ale' " asynchronous linter
Plug 'leafgarland/typescript-vim' " linter for typescript
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

" Javascript setup. When we enter a .js file we want to set the syntax to
" fully scan the file. When we leave, we want to clear that flag.
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" Settings for linter
let g:neomake_javascript_enabled_makers = ['eslint']

" Color schemes
Plug 'jhare/vim-crunchbang'
Plug 'sickill/vim-monokai'
Plug 'junegunn/seoul256.vim'
Plug 'exitface/synthwave.vim'
Plug 'zcodes/vim-colors-basic'

" AI Stuff
Plug 'github/copilot.vim'

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

" I use the mouse sometimes. Ironically, it works really well.
set mouse=a

"" turn on completion in comments
let g:ycm_complete_in_comments=1
"" load ycm conf by default
let g:ycm_confirm_extra_conf=0
"" turn on tag completion
let g:ycm_collect_identifiers_from_tags_files=1
"" only show completion as a list instead of a sub-window
set completeopt-=preview
"" start completion from the first character
let g:ycm_min_num_of_chars_for_completion=1
"" don't cache completion items
let g:ycm_cache_omnifunc=0
"" complete syntax keywords
let g:ycm_seed_identifiers_with_syntax=1

" Rust settings
let g:formatdef_rustfmt = '"rustfmt"'
let g:formatters_rust = ['rustfmt']

" Do not enter new comment on next line if you have entered one on current.
" Done with that annoyance. I'll add the // when I need it.
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

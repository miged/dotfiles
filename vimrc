set nocompatible
set encoding=utf-8
set autoindent
set laststatus=2    " always show status line
set number          " line numbers
set relativenumber  " relative line numbers
set ruler           " show cursor position
set cursorline      " highlight current line
set scrolloff=2     " minimum lines above/below cursor
set wildmenu        " enable tab completion
set noswapfile
set autoread        " reload changed files

" search
set ignorecase
set incsearch       " do incremental searching
set smartcase       " case-sens when capital letters

" whitespace
set expandtab       " use soft tabs
set smarttab
set shiftwidth=4    " one tab = four spaces (autoindent)
set softtabstop=4   " one tab = four spaces (tab key)
set tabstop=4

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·


"""""""""""""""""""""""""""""""""""""""""""""
" Plugins
call pathogen#infect()

" Ctrl-P settings
let g:ctrlp_max_files = 10000


"""""""""""""""""""""""""""""""""""""""""""""
" Bindings
let mapleader = ","
let g:mapleader = ","

" -/= to navigate tabs
nnoremap - :tabprevious<CR>
nnoremap = :tabnext<CR>


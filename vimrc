set nocompatible
set encoding=utf-8
set autoindent
set scrolloff=2     " minimum lines above/below cursor
set wildmenu        " enable tab completion
set autoread        " reload changed files
set history=500

" interface
set number          " line numbers
set ruler           " show cursor position all the time
set laststatus=2    " always show status line
set relativenumber  " relative line numbers

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

" vim files
set noswapfile
set undodir=~/.vim/undo
set undofile

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·


"""""""""""""""""""""""""""""""""""""""""""""
" Plugins
call pathogen#infect()

let g:ctrlp_max_files = 10000
let g:airline_theme='molokai'


"""""""""""""""""""""""""""""""""""""""""""""
" Colors
set t_Co=256
syntax enable
colorscheme molokai


"""""""""""""""""""""""""""""""""""""""""""""
" Bindings
let mapleader = ","
let g:mapleader = ","

" -/= to navigate tabs
nnoremap - :tabprevious<CR>
nnoremap = :tabnext<CR>


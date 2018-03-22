set nocompatible
set encoding=utf-8
set autoindent
set scrolloff=2     " minimum lines above/below cursor
set wildmenu        " enable tab completion
set autoread        " reload changed files
set history=500
set lazyredraw

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
set backupdir=~/.vim/backup
set directory=~/.vim/swap
set writebackup                 " temp backup during write
set undodir=~/.vim/undo         " persistent undo storage
set undofile                    " persistent undo on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·


"""""""""""""""""""""""""""""""""""""""""""""
" Plugins
call pathogen#infect()

let g:ctrlp_max_files = 10000
let g:airline_theme='molokai'
"let g:airline_powerline_fonts = 1


"""""""""""""""""""""""""""""""""""""""""""""
" Colors
set t_Co=256  " force 256 colors
syntax enable
colorscheme molokai


"""""""""""""""""""""""""""""""""""""""""""""
" Bindings
let mapleader = ","
let g:mapleader = ","

" -/= to navigate tabs
nnoremap - :tabprevious<CR>
nnoremap = :tabnext<CR>

" Allow for local overrides
if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif
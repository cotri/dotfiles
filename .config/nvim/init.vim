" ███╗   ██╗██╗   ██╗██╗███╗   ███╗     ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗ 
" ████╗  ██║██║   ██║██║████╗ ████║    ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝ 
" ██╔██╗ ██║██║   ██║██║██╔████╔██║    ██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗
" ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║    ██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║
" ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║    ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝
" ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝     ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝ 


set nocompatible		" Don't try to be vi compatible

let mapleader = ","		" Leader key

set history=1000		" Make larger hist for undos

" Pluggings
call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'tppe/vim-surround'
call plug#end()

" Text encoding
set encoding=utf-8		" Use enconding that supports unicode
set wrap				" Enable line wrapping

" UI
syntax on				" Enable syntax highlighting
set number				" Show line numbers
set relativenumber		" Show relative line numbers
set ruler				" Display cursor position
set showmode			" Display current mode
set showcmd				" Show partial commands in status
set showmatch			" Show matching pairs of () [] {}
"set cursorline			" Highlight current cursor line

" Operation
set mouse=a				" Enable mouse usage
set scrolloff=2			" Scroll 2 lines top/bottom 
set hidden				" Allows to switch to/from unsaved buffers

" Indentation
set shiftwidth=4 		" Indent 4 spaces
set smarttab			" Insert tabstop=# when tab is pressed
set tabstop=4			" Set tab size to 4 spaces
"set expandtab			" Replace tabs with spaces
"set softtabstop=4		" Remove tabed 4 spaces at once

" Searching
set hlsearch			" Highlight search terms
set incsearch			" Find as you type
set ignorecase			" Ignore case sensitive search
set smartcase			" Auto switch to case sensitive if capital letters

" File finding
set path+=**			" Look recursively in all dirs
set wildmenu			" Display all mathcing files
set wildmode=longest,list,full

"" Key mappings and more

" Goyo on/off
map <leader>g :Goyo \| set linebreak<CR>

" Bind 'jj' to escape key
inoremap jj <Esc>

" Remove search highlighting
nnoremap <leader><space> :nohlsearch<CR>

" Buffer navigation
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>

" Shortcutting split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Compile document, be it groff/LaTeX/markdown/etc
map <leader>c :w! \| !compiler <c-r>% &<CR><CR>

" Source init.vim whenever its updated
autocmd BufWritePost *init.vim :so %
"map <leader>s :source ~/.config/nvim/init.vim<CR>

" Run xrdb whenever Xresources is updated
autocmd BufWritePost *Xresources !xrdb %
" >> for more than one file: *Xresources,*Xdefaults

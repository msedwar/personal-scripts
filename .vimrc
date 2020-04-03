" Settings
filetype plugin indent on
syntax on
set termguicolors
set expandtab
set smarttab
set autoindent
set smartindent
set autoread

set ignorecase
set smartcase
set hlsearch
set gdefault

set tabstop=2
set shiftwidth=2

let NERDTreeShowHidden=1
let g:NERDSpaceDelims = 1

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'tomasr/molokai'
Plug 'junegunn/fzf'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'luochen1990/rainbow'
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/syntastic'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdcommenter'
call plug#end()

" Colorscheme
let g:airline_theme='wombat'
colorscheme molokai

" Mappings
let mapleader = ","

nnoremap ; :
vnoremap ; :

nmap <C-_> <plug>NERDCommenterToggle
vmap <C-_> <plug>NERDCommenterToggle<CR>gv

nmap q b
nmap e w

" Navigation

nnoremap <C-> :NERDTreeToggle<CR>
nnoremap <A-Right> :tabn<CR>
nnoremap <A-Left> :tabp<CR>
nnoremap <leader><leader> <c-^>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


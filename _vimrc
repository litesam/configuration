syntax on
set clipboard=unnamed
set tabstop=4
set nocompatible
set shiftwidth=4
set autoindent
set smartindent
set expandtab
set ruler
set showcmd
set incsearch
set hlsearch
set number
set rnu
set guifont=Hasklig
set backspace=indent,eol,start
set belloff=all
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
filetype indent on

let mapleader='-'

autocmd VimEnter * NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

autocmd FileType python nnoremap <F10> :w <bar> :term python %<CR>

set splitbelow
set splitright

autocmd FileType python setlocal shiftwidth=4 softtabstop=4 expandtab autoindent



call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'google/vim-searchindex'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
call plug#end()

set background=dark
let g:airline_theme='gruvbox'
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='hard'

colorscheme gruvbox

highlight Comment guifg=green
tmap <S-Insert> <C-W>"+

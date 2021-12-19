syntax on
set rnu
set tabstop=4
set mouse=a
set nocompatible
set shiftwidth=4
set autoindent
set smartindent
set ruler
set showcmd
set hlsearch
set incsearch
set number
"set cino+=L0
filetype indent on
highlight Comment ctermfg=green
set foldmethod=marker
set backspace=indent,eol,start
" set laststatus=2

autocmd FileType python setlocal shiftwidth=4 softtabstop=4 expandtab autoindent commentstring=#\ %s
autocmd FileType python map <buffer> <F9> :w<CR>:botright vsplit term://python3 %<CR>:vertical resize 60<CR>
autocmd FileType python imap <buffer> <F9> :w<CR>:botright vsplit term://python3 %<CR>:vertical resize 60<CR>
autocmd FileType python map <buffer> <F10> :botright split term://python3<CR>:resize 20<CR>
autocmd FileType cpp setlocal commentstring=//\ %s shiftwidth=2 softtabstop=2 expandtab autoindent

nnoremap <C-S-Down> :m .+1<CR>
nnoremap <C-S-Up> :m .-2<CR>
nnoremap <C-a> ggVG
nnoremap <C-S-b> <C-b> <Right>



call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'sheerun/vim-polyglot'

call plug#end()

set background=dark
colorscheme gruvbox

set t_Co=256

" Enable filetype plugins
filetype plugin on


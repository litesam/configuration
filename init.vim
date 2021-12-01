set rnu
set tabstop=4
syntax on
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
set nowrap
"set cino+=L0
filetype indent on
highlight Comment ctermfg=green
set guifont=Consolas:h10
set backspace=indent,eol,start
" set laststatus=2

autocmd FileType python setlocal shiftwidth=4 softtabstop=4 expandtab autoindent commentstring=#\ %s
autocmd FileType go setlocal shiftwidth=4 softtabstop=4 expandtab autoindent omnifunc=go#complete#Complete
autocmd FileType python map <buffer> <F9> :w<CR>:botright vsplit term://python3 %<CR>:vertical resize 60<CR>
autocmd FileType python imap <buffer> <F9> :w<CR>:botright vsplit term://python3 %<CR>:vertical resize 60<CR>
autocmd FileType python map <buffer> <F10> :botright split term://python3<CR>:resize 20<CR>
autocmd FileType cpp setlocal commentstring=//\ %s
noremap <F9> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>
inoremap <F9> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>

nnoremap <C-S-Down> :m .+1<CR>
nnoremap <C-S-Up> :m .-2<CR>
nnoremap <C-a> ggVG
nnoremap <C-S-b> <C-b> <Right>



call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'

call plug#end()



" colorscheme gruvbox
" set background=dark

" Enable filetype plugins
filetype plugin on


"Clipboard configuration
let s:clip = '/mnt/c/Windows/System32/clip.exe'
if executable(s:clip)
    augroup WSLYank
        autocmd!
            autocmd TextYankPost * if v:event.operator==# 'y' | call system(s:clip, @0) | endif
                augroup END
            endif
    au BufNewFile,BufRead *.tex
        \ set nocursorline |
        \ set nornu |
        \ set number |
        \ leg g:loaded_matchparen=1



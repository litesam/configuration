set clipboard=unnamed " Delete if it started to make some trouble
set tabstop=4
set nocompatible
set shiftwidth=4
set autoindent
set smartindent
set ruler
set showcmd
set incsearch
set hlsearch
set shellslash
set number
set cino+=L0
"set nowrap
set guifont=Consolas:h10
set backspace=indent,eol,start
set lines=40 columns=100

syntax on
filetype indent on

"let g:gruvbox_contrast_dark='medium'
"let g:gruvbox_invert_tabline=1

"colorscheme gruvbox 

inoremap {<CR>	{<CR>}<Esc>O
inoremap {}	{}
nnoremap <S-Down> :m .+1<CR>==
nnoremap <S-Up> :m .-2<CR>==
imap jk	<Esc>
map <C-a> <esc>ggVG<CR>
set belloff=all

autocmd filetype python nnoremap <F10> :w <bar> :!python %<CR>
autocmd filetype cpp nnoremap <F10> :w <bar> :!C:/TDM-GCC-64/bin/g++.exe % -o %:r -I"C:/TDM-GCC-64/include" -I"C:/TDM-GCC-64/x86_64-w64-mingw32/include" -I"C:/TDM-GCC-64/lib/gcc/x86_64-w64-mingw32/9.2.0/include" -I"C:/TDM-GCC-64/lib/gcc/x86_64-w64-mingw32/9.2.0/include/c++" -L"C:/TDM-GCC-64/lib" -L"C:/TDM-GCC-64/x86_64-w64-mingw32/lib" -static-libgcc<CR>
autocmd filetype cpp nnoremap <F11> :!%:r<CR>

set nu
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set rnu
	autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END


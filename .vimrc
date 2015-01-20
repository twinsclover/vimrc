"""""""""""""""""""""""""""""""""""""""""""""
" Common Settings
"""""""""""""""""""""""""""""""""""""""""""""
colors elflord
set nocompatible
set nu
set mouse=a
set shiftwidth=2
set tabstop=2
set nobackup
set hlsearch
set backspace=indent,eol,start

"""""""""""""""""""""""""""""""""""""""""""""
" Plugin Settings
"""""""""""""""""""""""""""""""""""""""""""""
"--------"
" Vundle "
"--------"
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'

" My Plugins :
" nerdtree
Plugin 'scrooloose/nerdtree'
" powerline
Plugin 'Lokaltog/vim-powerline'
" Sudo Edit
" Plugin 'chrisbra/SudoEdit.vim'


" end
call vundle#end()
filetype plugin indent on

"-----------"
" Nerd Tree	"
"-----------"
" Opens nerdtree when open a file
autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
" Closes vim if the only window left open is NerdTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Maps NerdTree key as F8
map <F8> :NERDTreeToggle<CR>

"------------"
" Power Line "
"------------"
set laststatus=2
set encoding=utf-8
set t_Co=256

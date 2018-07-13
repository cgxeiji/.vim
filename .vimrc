filetype off

set rtp +=~/dotfiles/.vim/.vim/bundle/vundle
call vundle#begin()

" Load Plugin Manager
Plugin 'gmarik/vundle'

" Load colorscheme
" Plugin 'flazz/vim-colorschemes'
Plugin 'tomasr/molokai'

" Load utilities
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

let mapleader = ","

set autoread
set backspace=indent,eol,start

set noexpandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround

set ttyfast

set foldmethod=syntax
set foldnestmax=10

set ignorecase
set smartcase
set hlsearch
set incsearch
set nolazyredraw

set magic

set showmatch
set mat=2

syntax on

set encoding=utf8
let base16colorspace=256
set t_Co=256
set background=dark
" colorscheme molokai

set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

set autoindent
set smartindent

let g:NERDTreeQuitOnOpen=0
let NERDTreeShowHidden=1

nmap <silent> <Leader>x :NERDTreeToggle<cr>
nmap <silent> <Leader>h :NERDTreeFind<cr>

nmap <silent> <Leader>, :noh<cr>

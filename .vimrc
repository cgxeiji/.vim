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
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'vim-python/python-syntax'
Plugin 'sickill/vim-pasta'
Plugin 'scrooloose/syntastic'
Plugin 'ervandew/supertab'
Plugin 'reedes/vim-wordy'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'fatih/vim-go'
Plugin 'Shougo/deoplete.nvim'
Plugin 'zchee/deoplete-go', { 'do': 'make'}
Plugin 'tell-k/vim-autopep8'

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
set nofoldenable

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
colorscheme molokai

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

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

let g:python_highlight_all = 1

nmap <silent> <Leader>, :noh<cr>
nmap <silent> <Leader>s :w<cr>

set splitbelow
set splitright

" Spell check for Markdown files
autocmd BufRead,BufNewFile *.md setlocal spell

" Auto PEP8 on save of Python files
autocmd BufRead,BufNewFile *.py let g:autopep8_on_save = 1
autocmd BufRead,BufNewFile *.py let g:autopep8_disable_show_diff = 1

" Add run keybinding for Go
autocmd FileType go nmap <buffer> <Leader>r :GoRun<cr>
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_arguments = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1

imap kj <Esc>

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Markdown Configuration
set conceallevel=2



highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
match OverLength /\%80v.\+/


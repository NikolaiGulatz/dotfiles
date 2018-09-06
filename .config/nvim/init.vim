set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

" Searching
Plug 'kien/ctrlp.vim'

" Linting
Plug 'w0rp/ale'

" Git gutter
Plug 'airblade/vim-gitgutter'

" Status bar
Plug 'vim-airline/vim-airline'

" Color scheme
Plug 'dracula/vim', { 'as': 'dracula' }

" Improved syntax highlighting for react
Plug 'mxw/vim-jsx'

" Improved syntax highlighting for ES6
Plug 'pangloss/vim-javascript'

" Startscreen
Plug 'mhinz/vim-startify'

" Filetree
Plug 'scrooloose/nerdtree'

call plug#end()

filetype plugin indent on

set encoding=utf-8
set termguicolors

set backspace=indent,eol,start   " allow backspacing over everything in insert mode
set updatetime=100
set history=1000                 " keep 1000 lines of command line history
set ruler                        " show the cursor position all the time
set showcmd                      " display incomplete commands
set complete-=i
set showmatch
set nowrap
set backupdir=~/.tmp
set directory=~/.tmp             " Don't clutter my dirs up with swp and tmp files
set autoread
set et                           " convert tabs to spaces
set sw=2
set smarttab
set noincsearch
set cursorline
set relativenumber

set ignorecase smartcase
set laststatus=2                 " Always show status line.
set number
set gdefault                     " assume the /g flag on :s substitutions to replace all matches in a line
set autoindent                   " always set autoindenting on
set lazyredraw                   " Don't redraw screen when running macros.
set eol
set wrap
set linebreak
set nolist                       " list disables linebreak
set hls is

" use global clipboard
set clipboard=unnamedplus

" remove useless whitespaces
autocmd BufWritePre * %s/\s\+$//e

" map capital commands to lower case
command WQ wq
command Wq wq
command W w
command Q q

" Better split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

vnoremap < <gv
vnoremap > >gv

set showbreak=↪\
set listchars=tab:→\ ,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set list!

" prevent accidentally saving files in a typo with ':w/' or similar
:autocmd BufWritePre [:;\\']*
\   try | echoerr 'Forbidden file name: ' . expand('<afile>') | endtry


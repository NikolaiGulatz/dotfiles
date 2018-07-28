set encoding=utf-8

set backspace=indent,eol,start   " allow backspacing over everything in insert mode

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

" natural split behavior
set splitbelow
set splitright

" vim should use system keyboard
set clipboard=unnamedplus

" use system keyboard if used with leader key
nnoremap <Leader>y "+y
nnoremap <Leader>d "+d
vnoremap <Leader>y "+y
vnoremap <Leader>d "+d
nnoremap <Leader>p :set paste<CR>"+p:set nopaste<CR>
nnoremap <Leader>P :set paste<CR>"+P:set nopaste<CR>
vnoremap <Leader>p :set paste<CR>"+p:set nopaste<CR>
vnoremap <Leader>P :set paste<CR>"+P:set nopaste<CR>

" remove useless whitespaces
autocmd BufWritePre * %s/\s\+$//e

" map capital commands to lower case
command WQ wq
command Wq wq
command W w
command Q q

set showbreak=↪\
set listchars=tab:→\ ,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set list!

" automatically enter insert mode on new terminals
autocmd TermOpen * startinsert

" prevent accidentally saving files in a typo with ':w/' or similar
:autocmd BufWritePre [:;\\']*
\   try | echoerr 'Forbidden file name: ' . expand('<afile>') | endtry

" global undo directory that is persisted after file closure
set undodir=~/.vim/undodir
set undofile


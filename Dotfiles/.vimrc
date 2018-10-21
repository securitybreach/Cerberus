"""""""""""""""""""" GLOBAL
let mapleader=","

set gfn=terminus
set go=

syntax on
filetype plugin indent on
set encoding=utf-8
set hidden
set showcmd
set nowrap
set backspace=indent,eol,start
set autoindent
set copyindent
set number
set shiftround
set ignorecase
set smartcase
set hlsearch
set incsearch
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak
set title
set visualbell
set noerrorbells
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set ttyfast
set mouse=
set nocompatible
set backup
set backupdir=~/.vim_backup
set noswapfile
set fileformats=unix,dos,mac
set laststatus=2
set expandtab
set softtabstop=2 tabstop=2 shiftwidth=2
set ruler
set background=light

"""""""""""""""""""" PLUGINS

let g:Powerline_symbols = 'fancy'
let g:CommandTMaxFiles=5000
let g:CommandTMaxHeight=12
map <C-o> :CommandT<CR>
let g:CommandTAcceptSelectionMap = '<CR>'
let g:CommandTCancelMap = '<C-g>'

autocmd filetype html,xml set listchars-=tab:>

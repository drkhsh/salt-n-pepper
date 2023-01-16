set nocompatible " must be first
set lazyredraw
set encoding=utf8
set history=1000
set autoread

filetype plugin indent on
syntax enable

" theme
packadd! dracula
colorscheme dracula

"packadd! gruvbox
"colorscheme gruvbox

"colorscheme cyberpunk-neon
"set termguicolors

" fix background
set background=dark
hi Normal guibg=NONE ctermbg=NONE

set number
set ruler
set wildmenu
set showmode
set showmatch
set mat=1 " blink 1/10s
set mouse=a " enable

set ignorecase
set smartcase
set incsearch
set hlsearch
set magic

set shiftwidth=4
set tabstop=4
set noexpandtab " no comment
set autoindent
set smarttab
set smartindent
set copyindent
set preserveindent

" fixes x11 clipboard
set clipboard=unnamedplus

set textwidth=80
set nowrap
set cursorline

" color 80 columns limit
set colorcolumn=80
highlight ColorColumn ctermbg=black

" backspace/cursor keys wrap to previous/next line
set backspace=indent,eol,start
set whichwrap+=<,>,[,],h,l

" highlight extra whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/


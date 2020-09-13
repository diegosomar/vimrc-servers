syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

set relativenumber
set number

set nojoinspaces
set showmatch
set linebreak
set smarttab
set backspace=indent,eol,start
set cpoptions+=n
set nowrap
set shiftwidth=2
set autoindent
set smartindent
set tabstop=2
set expandtab
set number relativenumber
set mouse=a

set autoread
set ruler
set splitright
set splitbelow
set cursorline
set showcmd

" https://www.johnhawthorn.com/2012/09/vi-escape-delays/
set timeoutlen=1000 ttimeoutlen=0

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

set hidden

set list
set listchars=tab:·:,trail:¶,extends:»,precedes:«

" Bell errors off
set noerrorbells
set vb t_vb=

let mapleader="\<space>"

noremap <C-s> :w<cr>
vnoremap <C-s> :w<cr>
inoremap <C-s> <ESC>:w<cr>

set scrolloff=5
nnoremap <leader><tab> :noh<cr>

:command! W w
:command! Q q

set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildmode=longest:full,full
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*.swp,*.pyc
set wildignore+=**/node_modules/**

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

nnoremap <S-k> {
nnoremap <S-j> }

inoremap <c-d> <esc>"ayy"api
vnoremap <c-d> "aye"ap
nnoremap <c-d> <ESC>"ayy"ap

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

nnoremap <leader>fn :echo @%<cr>

set path=,,
set path+=**
set path-=node_modules
nnoremap <C-f> /
nnoremap <leader>r :%s///g<Left><Left>
xnoremap <leader>r :%s///g<Left><Left>

nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j

set laststatus=2
set statusline=
set statusline+=\ %F\           "File path
set statusline+=\ %m\           "Modified File
set statusline+=%=              "Extra space
set statusline+=%#CursorColumn# "Dark background color
set statusline+=\ %y            "File type
set statusline+=\ %p%%          "Line Number Percent
set statusline+=\ %l:%c\ \      "Line and column

filetype plugin on
set foldmethod=indent             " Defines folding method. `syntax` is based on file syntax.
set foldcolumn=1
set foldlevelstart=99
set nofoldenable

autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

vnoremap <C-c> "*y
inoremap <C-V> <Esc>"*pa
nnoremap <leader>p "*p

set wildcharm=<Tab>
nnoremap <leader>bf :buffers<cr>

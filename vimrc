filetype plugin on
source ~/.vim/bootstrap.vim

set nocompatible            " be iMproved, required
filetype off                " required

filetype plugin indent on   " required

" Enable filetype plugins.
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside.
set autoread

" Highlight search results.
set hlsearch

" Highlight all pattern matches WHILE typing the pattern
set incsearch

" Ignore case when searching
set ignorecase
set smartcase

" Show matching backets when text indicator is over them.
set showmatch

" Show the command in the last line while it is being typed.
set showcmd

" When deleting whitespace at the beginning of a line, delete
" 1 tab worth of spaces (for us this is 4 spaces)
set smarttab

" When creating a new line, copy the indentation from the line above
set autoindent

" Auto save when switching buffers
set autowriteall

" Highlight the current line
set cursorline

" Enable folding.
set foldmethod=indent
set foldlevel=99

" Add extra lines before/after cursor
set scrolloff=10

" Enable syntax highlighting.
syntax enable

colorscheme minimalist
set background=dark

" Use spaces instead of tabs.
set expandtab

" 1 tab = 4 spaces.
set shiftwidth=4
set tabstop=4

" Display tab completion
set wildmenu

" List possible matches
set wildmode=list

set si " Smart indent.
set wrap " Wrap lines.

" Return to last edit position when opening files.
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") < line("$") |
    \   exe "normal! g`\"" |
    \ endif

" Remember info about open buffers on close.
set viminfo^=%

" Enable mouse.
set mouse=a

" Show absolute numbers.
set number

" Show relative line numbers.
set relativenumber

" Enable copy/paste from/to Vim and the system
set clipboard=unnamedplus

" Prevent syntax highlighting from going out of sync.
au Syntax * syntax sync fromstart

au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview
au BufWrite * silent! mkview
au BufRead * silent! loadview

" Easier buffer navigation.
set hidden
nnoremap <C-H> :bp<CR>
nnoremap <C-L> :bn<CR>

" Open new splits at right and bottom by default
set splitbelow
set splitright

au BufNewFile,BufRead *.py:
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
    \ set encoding=utf-8
highligh BadWhitespace ctermbg=red guibg=darkred
au BufNewFile,BufRead *.py,*.pyw,*.c,*.h,*.js,*.css match BadWhitespace /\s\+$/
let python_highlight_all=1
au BufNewFile,BufRead *.view set filetype=html
syntax on


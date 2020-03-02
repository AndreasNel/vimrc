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

" Enable folding with the spacebar.
"nnoremap <space> za

" Enable syntax highlighting.
syntax enable

colorscheme desert
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

" Treat long lines as break lines.
map j gj
map k gk

" Return to last edit position when opening files.
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") < line("$") |
    \   exe "normal! g`\"" |
    \ endif
" Remember info about open buffers on close.
set viminfo^=%

" Enable mouse.
set mouse=a

" Show relative line numbers.
set relativenumber

" Enable copy/paste from/to Vim and the system
set clipboard=unnamed
set clipboard=unnamedplus

" Prevent syntax highlighting from going out of sync.
au Syntax * syntax sync fromstart

au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview
au BufWrite * silent! mkview
au BufRead * silent! loadview
"autocmd BufWrite * mkview
"autocmd BufRead * silent loadview

" autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
" set completeopt=longest,menuone
" let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" Map F5 to compile & run.
autocmd BufRead,BufNewFile *.tex map <F5> :w<CR>:!./compile.sh<CR>

" Easier buffer navigation.
set hidden
nnoremap <C-H> :bp<CR>
nnoremap <C-L> :bn<CR>
nnoremap <C-J> :bp <bar> bd# <bar> bp <bar> bn<CR>
nnoremap <C-K> :bp <bar> bd!# <bar> bp <bar> bn<CR>

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


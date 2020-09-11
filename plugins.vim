" This is the main plugin list, sourced by modules/plugins.vim
" Configuration goes in the appropriate modules/plugins/*.vim file.
" So configuration for tmux.vim would go in modules/plugins/tmux.vim.vim

Plug 'Valloric/YouCompleteMe', {'do': './install.py --ts-completer --clang-completer --java-completer'}

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'elzr/vim-json'
Plug 'lifepillar/pgsql.vim', {'do': 'patch -p0 < ../../modules/plugins/vim-pgsql.patch'}

Plug 'junegunn/vim-easy-align'

Plug 'tpope/vim-abolish'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tommcdo/vim-fugitive-blame-ext'

Plug 'dikiaap/minimalist'

Plug 'ntpeters/vim-better-whitespace'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'wakatime/vim-wakatime'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tomtom/tcomment_vim'
Plug 'mattn/emmet-vim'
Plug 'psf/black'
Plug 'nvie/vim-flake8'
Plug 'fisadev/vim-isort'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'mtth/scratch.vim'
Plug 'editorconfig/editorconfig-vim'

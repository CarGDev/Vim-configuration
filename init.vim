set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.config/nvim/.vimrc

set number
set mouse=a
set numberwidth=1
" set clipboard=unnamed
set clipboard=unnamedplus
syntax enable
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set signcolumn=yes
set expandtab
set tabstop=2 shiftwidth=2

filetype plugin indent on

set list
set listchars=eol:~,tab:>.,trail:~,extends:>,precedes:<,space:_

set relativenumber
so ~/.vim/plugins.vim
so ~/.vim/plugin-config.vim
so ~/.vim/maps.vim

set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" colorscheme gruvbox
" let g:gruvbox_contrast_dark = "hard"

highlight Normal ctermbg=NONE
set laststatus=2
set noshowmode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" Javascript
autocmd BufRead *.js set filetype=javascript.jsx
autocmd BufRead *.jsx set filetype=javascript.jsx
augroup filetype javascript syntax=javascript



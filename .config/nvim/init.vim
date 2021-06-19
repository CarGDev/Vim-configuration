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
set encoding
set showmatch
set signcolumn=yes
set expandtab
set tabstop=2 shiftwidth=2

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

filetype plugin indent on

syntax on
if (&t_Co != 256)
  set t_Co=256
endif
set list
set listchars=eol:~,tab:>.,trail:~,extends:>,precedes:<,space:_

set relativenumber
so ~/.vim/plugins.vim
so ~/.vim/plugin-config.vim
so ~/.vim/maps.vim

set background=dark
colorscheme vim-material
" ayu colorscheme
set termguicolors     " enable true colors support
" let ayucolor="dark"   " for dark version of theme
" colorscheme ayu

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



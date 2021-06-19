set number "Muestra el numero de la izquierda
set mouse=a "  con esta opción cuando copiemos desde la terminal deslizando el ratón por el texto del fichero no se copiarán los números de línea
set autoindent "aplica identacion automatica en vim
set smartindent "aplica identacion de acuerdo al lenguaje
set tabstop=2 "indica cuántos espacios tiene una tabulación
set shiftwidth=2 "indica el nº de espacios para una indentación
" set expandtab
set numberwidth=1 "columnas para la line de numeros
set clipboard=unnamed "copia al portapapeles
syntax enable "te remarca la sintaxis
set showcmd "te muestra el historial
set ruler "te muestra en que linea estas
set cursorline "Resalta la linea en la pantalla
set encoding=utf-8 "Acepta los caracteres especiales como la ñ
set showmatch "Resalta los corchetes
set sw=2 
set relativenumber " numero relativos dependiendo donde te encuentras
scriptencoding utf-8
set encoding=utf-8
so ~/.vim/plugins.vim
so ~/.vim/plugin-config.vim
so ~/.vim/maps.vim

set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" colorscheme gruvbox
" let g:gruvbox_contrast_dark = "hard"
let g:deoplete#enable_at_startup = 1
let g:jsx_ext_required = 0
highlight Normal ctermbg=NONE
set laststatus=2
set noshowmode

" Javascript
autocmd BufRead *.js set filetype=javascript.jsx
autocmd BufRead *.jsx set filetype=javascript.jsx
augroup filetype javascript syntax=javascript

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter


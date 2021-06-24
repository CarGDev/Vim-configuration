call plug#begin('~/.vim/plugged')

" markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" If you have nodejs and yarn
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

Plug 'hzchirs/vim-material'
Plug 'terryma/vim-multiple-cursors'

Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'

" Angular
Plug 'iamcco/coc-angular'
Plug 'burnettk/vim-angular'

" Typescript
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax

" GraphQL
Plug 'jparise/vim-graphql'

" omnisharp for c#
Plug 'OmniSharp/omnisharp-vim'
Plug 'dense-analysis/ale'

" vim-rainbow
Plug 'frazrepo/vim-rainbow'

"ayu
Plug 'ayu-theme/ayu-vim' 

" syntax
Plug 'sheerun/vim-polyglot'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'flowtype/vim-flow'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" status bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" Wakatime
Plug 'wakatime/vim-wakatime'

" Themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

" tabnine
" Plug 'codota/tabnine-vim'
" Plug 'zxqfl/tabnine-vim'

" Tree
Plug 'scrooloose/nerdtree'

" typing
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

" tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

" autocomplete
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"{'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

" test
Plug 'tyewang/vimux-jest-test'
Plug 'janko-m/vim-test'

" IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'

" git
Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-repeat'

call plug#end()

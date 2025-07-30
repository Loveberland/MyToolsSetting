call plug#begin('~/.vim/plugged')

" --- Appearance & Themes ---
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'luochen1990/rainbow'           " Rainbow brackets plugin

" --- Functionality & Tools ---
"Plug 'preservim/nerdtree'
"Plug 'tpope/vim-commentary'
"'Plug 'tpope/vim-fugitive'
"Plug 'jiangmiao/auto-pairs'

call plug#end()

" --- General Settings ---
set number
syntax on
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark = 'soft'

if has('termguicolors')
  set termguicolors
endif

" --- Rainbow Parentheses Settings ---
let g:rainbow_active = 1


"==============================================================================
"
"               An Explorer's .vimrc for Modern Development
"
"==============================================================================
" To experiment, you can "comment out" a line by putting a double quote (")
" at the beginning. To reload this file after making changes, use the
" <Leader>vr shortcut defined below (press Spacebar then 'vr').
"==============================================================================


"==============================================================================
" 1. VIM-PLUG PLUGIN MANAGER SETUP
"==============================================================================
call plug#begin('~/.vim/plugged')

" --- Appearance & Themes ---
Plug 'morhetz/gruvbox'               " The main theme you requested
Plug 'vim-airline/vim-airline'       " A beautiful, information-rich status bar
Plug 'vim-airline/vim-airline-themes' " Themes for the status bar

" --- Functionality & Tools ---
Plug 'preservim/nerdtree'            " File system explorer
Plug 'tpope/vim-commentary'          " The easiest way to comment code (gc)
Plug 'tpope/vim-fugitive'            " The best Git wrapper for Vim
Plug 'jiangmiao/auto-pairs'          " Automatically inserts closing pairs {}, [], ()

call plug#end()


"==============================================================================
" 2. CORE VIM BEHAVIOR
"==============================================================================
set nocompatible            " Behave like Vim, not Vi (essential)
filetype plugin indent on   " Enable filetype detection, plugins, and indentation
set encoding=utf-8          " Use UTF-8 encoding for all files
set mouse=a                 " Enable mouse support in all modes
set hidden                  " Allow switching buffers without saving
set history=1000            " Keep a long command history
set lazyredraw              " Don't redraw screen while executing macros
set confirm                 " Ask for confirmation when quitting with unsaved changes


"==============================================================================
" 3. APPEARANCE & UI
"==============================================================================
syntax on                   " Enable syntax highlighting

" --- Theme Settings (MUST come after plug#end()) ---
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark = 'soft'  " 'soft', 'medium', or 'hard'

" --- Line Numbers ---
set number                  " Show absolute line numbers
"set relativenumber          " Show relative numbers from the cursor (great for jumping)

" --- UI Elements ---
set cursorline              " Highlight the current line the cursor is on
set showmatch               " Briefly jump to matching bracket
set scrolloff=8             " Keep 8 lines of context above/below the cursor when scrolling
set signcolumn=yes          " Always show the sign column (for git signs, errors, etc.)
set showmode                " Show the current mode (e.g., -- INSERT --) at the bottom
set termguicolors           " Enable true colors in terminal (makes themes look better)

" --- Airline Status Bar Config ---
let g:airline_powerline_fonts = 1 " Set to 1 if you have powerline-patched fonts
let g:airline#extensions#tabline#enabled = 1 " Show open buffers as tabs in the status bar
let g:airline_theme='gruvbox'     " Make Airline use the gruvbox theme


"==============================================================================
" 4. EDITING & TEXT MANIPULATION
"==============================================================================
" --- Indentation (Your Request) ---
set tabstop=8               " Width of a tab character
set shiftwidth=8            " Width for auto-indent operations
set softtabstop=8           " Backspace over 8 spaces as if it were one tab
set expandtab               " Use spaces instead of literal tab characters
set autoindent              " Copy indent from current line when starting a new line
set smartindent             " Be smart about indentation in new lines

" --- Text Wrapping ---
set wrap                    " Wrap long lines
set linebreak               " Wrap at word boundaries, not in the middle of a word


"==============================================================================
" 5. SEARCH & NAVIGATION
"==============================================================================
set incsearch               " Show search results as you type
set hlsearch                " Highlight all search matches
set ignorecase              " Ignore case in search patterns...
set smartcase               " ...unless an uppercase letter is used in the search


"==============================================================================
" 6. KEY MAPPINGS (Shortcuts)
"==============================================================================
" Set the Leader key to the Spacebar. The leader is a master key for your
" own custom shortcuts.
let mapleader = " "

" --- File & Session Management ---
nnoremap <leader>w :w<CR>                   " Quick save with <Space>w
nnoremap <leader>q :q<CR>                   " Quick quit with <Space>q
nnoremap <leader>vr :so ~/.vimrc<CR>         " Reload .vimrc with <Space>vr

" --- Plugin Shortcuts ---
nnoremap <leader>n :NERDTreeToggle<CR>       " Toggle NERDTree with <Space>n
nnoremap <leader>f :NERDTreeFind<CR>         " Find current file in NERDTree

" --- Window Navigation ---
" Move between split windows using Ctrl + H/J/K/L
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>

" --- For Purists: Disable arrow keys to force using HJKL ---
" Uncomment these lines if you want to build good habits!
" nnoremap <Up> <Nop>
" nnoremap <Down> <Nop>
" nnoremap <Left> <Nop>
" nnoremap <Right> <Nop>

"==============================================================================
" 7. ADVANCED & FILE HANDLING
"==============================================================================
" Keep swap files, backup files, and undo history out of your project directories
set backupdir=~/.vim/backup
set directory=~/.vim/swap
set undodir=~/.vim/undo
set undofile                " Persist undo history between sessions

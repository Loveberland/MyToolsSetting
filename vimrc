:set number
:syntax on

let &t_SI = "\e[4 q"    " SI = insert mode
let &t_EI = "\e[2 q"    " EI = normal mode

set tabstop=4       " Number of spaces that a <Tab> counts for
set shiftwidth=4    " Number of spaces used for autoindent
set softtabstop=4   " Number of spaces when hitting <Tab> in insert mode
set expandtab       " Use spaces instead of actual <Tab> characters

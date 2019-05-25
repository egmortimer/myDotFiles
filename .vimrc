colorscheme zellner
set guifont=Consolas:h11
syntax enable
set tabstop=4
set softtabstop=4

set number
filetype indent on
set wildmenu
set showmatch

let mapleader=","
inoremap jk <esc>

nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

colorscheme zellner
set guifont=Consolas:h11
syntax enable
set tabstop=4
set softtabstop=4

set number " show the line numbers
set cursorline " highlight the current line
filetype indent on " load filetype-speciic indent files
set wildmenu
set showmatch " highlight matching [{()}]

" let changes
let mapleader=","   " leader is comma
let g:netrw_browse_split=2

" jk is escape
inoremap jk <esc>
" edit vimrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

set backspace=indent,eol,start

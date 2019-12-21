colorscheme desert
set background=dark
set termguicolors
syntax enable
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cmdheight=2
set smartcase
filetype plugin indent on


set number
set wildmenu
set showmatch

set incsearch " search as characters are entered
set hlsearch  " highlight matches

""""""""""""""""""""""""""""""""""""""""""
" Custom keybinds and stuff
""""""""""""""""""""""""""""""""""""""""""
let g:netrw_browse_split=2
let mapleader=","
inoremap jk <esc>

nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>eb :vsp ~/.bashrc<CR>
nnoremap <leader>sb :source ~/.bashrc<CR>
nnoremap <leader><space> :nohlsearch<CR> " turn off search highlight
nnoremap j gj
nnoremap k gk
nnoremap gV `[v`]  " highlight last inserted text


" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Managing buffers
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>
" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT 
" Close all the buffers
map <leader>ba :bufdo bd<cr>


" Managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tm :tabmove<cr>
map <leader>t<leader> :tabnext<cr>

" Opens a new tab with the current buffer's path
" Useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Always show the status line
set laststatus=2
" Format status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

function! HasPaste()
	if &paste
		return 'PASTE MODE '
	endif
	return ''
endfunction

call plug#begin()

" Plugins
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tomlion/vim-solidity'

" Colorschemes
Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'phanviet/vim-monokai-pro'
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'

" Just for fun and practice
Plug 'ThePrimeagen/vim-be-good', { 'do': './install.sh'}

call plug#end()

let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set background=dark

let g:vim_be_good_floating = 1

" Functional
let mapleader = " "

let g:netrw_browse_split = 2
let g:vrfr_rg = 'true'
let g:netrw_banner = 0
let g:netrw_winsize = 25

" Coc Stuff
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nnoremap <leader>cr :CocRestart

" Fugitive Mappings
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>

" Custom Mapping
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <Leader>pf :Files<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>

" Python3 VirtualEnv

" General
set termguicolors
set noshowmatch
set nohlsearch
set relativenumber
set title
set laststatus=2
set showcmd
set showmode
set wildmenu

set incsearch
set ignorecase
set smartcase

set nowrap
set breakindent

" Tab stuff
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set smartindent
set expandtab

set cmdheight=2

" Having longer update times leads to noticable delays
" and poor user experience - ThePrimeagen
set updatetime=50

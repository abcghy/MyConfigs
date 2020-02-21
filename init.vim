let mapleader=" "

syntax on
set number
set relativenumber
set cursorline
set wrap

set hlsearch
exec ":nohlsearch"
set incsearch
set ignorecase
set smartcase

filetype plugin on

noremap <LEADER><CR> :nohlsearch<CR>

noremap <LEADER>ws :split<CR>
noremap <LEADER>wv :vsplit<CR>
noremap <LEADER>wh <C-w>h
noremap <LEADER>wj <C-w>j
noremap <LEADER>wk <C-w>k
noremap <LEADER>wl <C-w>l
noremap <LEADER>wd :close<CR>
" todo: 在 Markdown 里面勾选将 - [ ] 变成 - [x]
"noremap <LEADER>cc 0f[lclx<Esc>

noremap J 5j
noremap K 5k

map s <nop>
map S :w<CR>
map R :source $MYVIMRC<CR>

map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

call plug#begin('~/.vim/plugged')

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'dhruvasagar/vim-table-mode'
Plug 'jceb/vim-orgmode'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-startify'
Plug 'junegunn/goyo.vim'
Plug 'preservim/nerdcommenter'

call plug#end()

color snazzy

" 进入写作模式
noremap <LEADER>gy :Goyo<CR>

""" NerdTree
noremap tt :NERDTreeToggle<CR>

""" Tagbar
let g:tagbar_map_showproto = "K"

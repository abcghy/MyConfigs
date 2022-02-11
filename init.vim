lua require('plugins')
lua require('treesitter-config')
lua require('lsp-mapping')

lua << END
-- lualine
require('lualine').setup {
	options = { theme = 'dracula'}
}
END

map <Space> <Nop>
let g:mapleader=" "

filetype indent on
filetype plugin indent on
set autoindent
set expandtab "use space not tab
set softtabstop=2
set shiftwidth=2
set shiftround

set number
set relativenumber
set cursorline
hi CursorLine cterm=NONE ctermbg=240
set cursorcolumn
hi CursorColumn cterm=NONE ctermbg=238

set clipboard=unnamedplus

map s <nop>
map S :w<CR>
map R :source $MYVIMRC<CR>

"""""""""" plugins

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" setup mapping to call :LazyGit
nnoremap <silent> <leader>gg :LazyGit<CR>

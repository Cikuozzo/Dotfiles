call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

set number              
set tabstop=4           
set shiftwidth=4        
set expandtab
set smartindent
set termguicolors
set mouse=a
set hidden
set ignorecase
set smartcase
set showtabline=0
set cursorline

"Gruvbox
colorscheme gruvbox
set background=dark
syntax enable

"Vim-Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1

"Explore
nnoremap <leader>ff :Explore<CR>

"Fugitive
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gb :Gblame<CR>

"Treesitter
syntax enable
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set nofoldenable

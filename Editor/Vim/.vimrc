call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
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
set path+=**
set wildmenu

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

"netrw
nnoremap <leader>ff :Explore<CR>
let g:netrw_banner=0
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_browse_split=4


"Fugitive
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gb :Gblame<CR>


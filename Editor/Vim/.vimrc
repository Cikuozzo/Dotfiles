call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
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

"NerdTree
nnoremap <leader>ff :NERDTreeToggle<CR>
" Configurazioni NERDTree
let NERDTreeShowHidden=1          " Mostra file nascosti
let NERDTreeQuitOnOpen=1          " Chiudi NERDTree dopo aver aperto un file
let NERDTreeAutoDeleteBuffer=1    " Elimina buffer quando il file viene eliminato
let NERDTreeMinimalUI=1           " Interfaccia minimale
let NERDTreeDirArrows=1           " Usa frecce invece di caratteri ASCII
let NERDTreeShowLineNumbers=1     " Mostra numeri di riga

" Ignora alcuni file e cartelle
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '\.o$', '\.so$', '\.a$', '\.swp', '*\.swp', '\.swo', '\.swn', '\.swh', '\.swm', '\.swl', '\.swk', '\.sw*$']

" Chiudi Vim se NERDTree è l'unica finestra aperta
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Apri NERDTree automaticamente quando Vim avvia senza file specificati
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

autocmd FileType nerdtree setlocal nolist

"Fugitive
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gb :Gblame<CR>

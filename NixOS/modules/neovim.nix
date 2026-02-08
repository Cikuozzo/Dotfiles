{ config, pkgs, ... }:

{
  # Installazione di Neovim
  environment.systemPackages = with pkgs; [
    neovim
    xclip
    ripgrep
  ];

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;

    configure = {
      customRC = ''
        " Impostazioni generali
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
        set clipboard=unnamedplus

        " Gruvbox theme
        colorscheme gruvbox
        set background=dark
        syntax enable

        " Vim-Airline
        let g:airline#extensions#tabline#enabled = 1
        let g:airline#extensions#tabline#formatter = 'default'
        let g:airline_powerline_fonts = 1
        let g:airline_theme = 'base16_gruvbox_dark_medium'

        " netrw
        nnoremap <leader>ff :Explore<CR>
        let g:netrw_banner=0
        let g:netrw_altv=1
        let g:netrw_liststyle=3
        let g:netrw_browse_split=4

        " Fugitive (Git)
        nnoremap <leader>gs :Git<CR>
        nnoremap <leader>gc :Git commit<CR>
        nnoremap <leader>gp :Git push<CR>
        nnoremap <leader>gl :Git log<CR>
        nnoremap <leader>gd :Gdiff<CR>
        nnoremap <leader>gb :Git blame<CR>
      '';

      packages.myVimPackage = with pkgs.vimPlugins; {
        start = [
          vim-sensible
          gruvbox-nvim
          vim-airline
          vim-airline-themes
          vim-fugitive
        ];
      };
    };
  };
}

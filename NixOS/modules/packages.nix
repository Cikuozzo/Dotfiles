{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  fonts.fontconfig.enable = true;

  fonts.packages = with pkgs; [
    iosevka
    noto-fonts
    noto-fonts-cjk-sans    
    noto-fonts-cjk-serif
    noto-fonts-color-emoji
  ];

  environment.systemPackages = with pkgs; [
    neovim
    wget
    curl
    git
    gh
    vlc
    gcc
    fastfetch
    obs-studio
    discord
    steam
    gimp
    obsidian
    gnumake
    papirus-icon-theme
    pavucontrol
    kdePackages.kdenlive
    unzip
    btop
    google-chrome
    xclip
    ripgrep
    kile        
    texliveFull
  ];
}

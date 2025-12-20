{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    neovim
    emacs
    wget
    curl
    git
    gh
    google-chrome
    vlc
    ghostty
    gcc
    davinci-resolve
    fastfetch
    obs-studio
    discord
    steam
    gimp
    obsidian
    gnumake
    papirus-icon-theme
    noto-fonts-cjk-serif
    noto-fonts-cjk-sans
    blender
  ];
}

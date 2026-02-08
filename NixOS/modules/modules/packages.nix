{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    vim
    wget
    curl
    git
    gh
    google-chrome
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
    noto-fonts-cjk-serif
    noto-fonts-cjk-sans
    pavucontrol
    arandr
  ];
}

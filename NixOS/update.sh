#!/bin/sh

sudo cp /etc/nixos/configuration.nix ~/Dotfiles/NixOS/configuration.nix
sudo cp -r /etc/nixos/modules/* ~/Dotfiles/NixOS/modules/
sudo cp -r /etc/nixos/suckless/* ~/Dotfiles/NixOS/suckless/
sudo chown -R $USER:users ~/Dotfiles/NixOS
sudo chmod -R u+rw ~/Dotfiles/NixOS


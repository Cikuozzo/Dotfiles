#/bin/bash

cp ./modules/* /etc/nixos/modules
cp configuration.nix /etc/nixos/
cp hardware-configuration.nix /etc/nixos
nixos-rebuild switch


{ config, lib, pkgs, ... }:

{

# Enable X11 server
services.xserver = {
	enable = true;
};

# Xorg specific packages
environment.systemPackages = with pkgs.xorg; [

	libX11.dev
	libXft.dev
	libXinerama.dev

];

}

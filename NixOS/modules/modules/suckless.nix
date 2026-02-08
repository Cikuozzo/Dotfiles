{ config, pkgs, ... }:

let
  # dwm - Dynamic Window Manager
  mydwm = pkgs.dwm.overrideAttrs (oldAttrs: {
    src = /etc/nixos/suckless/dwm;
  });

  # st - Simple Terminal
  myst = pkgs.st.overrideAttrs (oldAttrs: {
    src = /etc/nixos/suckless/st;
  });

  # dmenu - Dynamic Menu
  mydmenu = pkgs.dmenu.overrideAttrs (oldAttrs: {
    src = /etc/nixos/suckless/dmenu;
  });

  # slstatus - Status Monitor
  myslstatus = pkgs.slstatus.overrideAttrs (oldAttrs: {
    src = /etc/nixos/suckless/slstatus;
  });

in
{
  environment.systemPackages = with pkgs; [
    mydwm
    myst
    mydmenu
    myslstatus
  ];

  services.xserver.windowManager.dwm = {
    enable = true;
    package = mydwm;
  };

  systemd.user.services.slstatus = {
    description = "slstatus - status monitor for dwm";
    wantedBy = [ "graphical-session.target" ];
    partOf = [ "graphical-session.target" ];
    serviceConfig = {
      ExecStart = "${myslstatus}/bin/slstatus";
      Restart = "on-failure";
      RestartSec = 3;
    };
  };
}

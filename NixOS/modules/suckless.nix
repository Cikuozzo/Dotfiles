
{ config, pkgs, ... }:

let
  # dwm - Dynamic Window Manager
  mydwm = pkgs.dwm.overrideAttrs (oldAttrs: rec {
    src = pkgs.fetchgit {
      url = "https://git.suckless.org/dwm";
      rev = "HEAD";
      sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
    };
    # Aggiungi patch qui se necessario:
    # patches = [
    #   ./dwm-alpha.diff
    #   ./dwm-gaps.diff
    # ];
  });

  # st - Simple Terminal
  myst = pkgs.st.overrideAttrs (oldAttrs: rec {
    src = pkgs.fetchgit {
      url = "https://git.suckless.org/st";
      rev = "HEAD";
      sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
    };
    
    # patches = [
    #   ./st-scrollback.diff
    # ];
  });

  # dmenu - Dynamic Menu
  mydmenu = pkgs.dmenu.overrideAttrs (oldAttrs: rec {
    src = pkgs.fetchgit {
      url = "https://git.suckless.org/dmenu";
      rev = "HEAD";
      sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
    };
    # patches = [
    #   ./dmenu-center.diff
    # ];
  });

  # slstatus - Status Monitor
  myslstatus = pkgs.slstatus.overrideAttrs (oldAttrs: rec {
    src = pkgs.fetchgit {
      url = "https://git.suckless.org/slstatus";
      rev = "HEAD";
      sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
    };
  });

in
{
  # Installa i pacchetti suckless personalizzati
  environment.systemPackages = with pkgs; [
    mydwm
    myst
    mydmenu
    myslstatus
  ];

  # Configura dwm come window manager
  services.xserver.windowManager.dwm = {
    enable = true;
    package = mydwm;
  };
}

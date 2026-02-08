{ config, lib, pkgs, ... }:

{
  # Configurazione per i programmi suckless
  
  services.xserver = {
    enable = true;
    
    # Display Manager
    displayManager = {
      lightdm.enable = true;
      defaultSession = "none+dwm";
    };
    
    # Window Manager - dwm
    windowManager.dwm = {
      enable = true;
      # Per usare dwm con patch personalizzate, decommenta e configura:
      # package = pkgs.dwm.overrideAttrs (oldAttrs: {
      #   src = /path/to/your/dwm;
      # });
    };
  };
  
  # Pacchetti suckless
  environment.systemPackages = with pkgs; [
    # Window Manager
    dwm
    
    # Menu dinamico
    dmenu
    
    # Status bar
    slstatus
    
    # Terminale
    st
    
    # Utility aggiuntive utili con dwm
    xorg.xsetroot     # Impostare il root window
    xorg.xset         # Configurazione X
    feh               # Wallpaper
    scrot             # Screenshot
    xclip             # Clipboard
    
    # Browser leggero
    firefox
    
    # File manager leggero
    pcmanfm
    
    # Visualizzatore immagini leggero
    sxiv
    
    # Visualizzatore PDF
    zathura
    
    # Editor di testo
    # neovim
    # vim
  ];
  
  # Servizi utili per dwm
  # Compositor per trasparenze e animazioni (opzionale)
  # services.picom = {
  #   enable = true;
  #   fade = true;
  #   shadow = true;
  #   fadeDelta = 4;
  # };
  
  # Script di avvio per slstatus (opzionale)
  # Puoi creare uno script in ~/.xinitrc o usare il display manager
  
  # Configurazione esempio per autostart di slstatus
  # systemd.user.services.slstatus = {
  #   description = "slstatus - status monitor for dwm";
  #   wantedBy = [ "graphical-session.target" ];
  #   partOf = [ "graphical-session.target" ];
  #   serviceConfig = {
  #     ExecStart = "${pkgs.slstatus}/bin/slstatus";
  #     Restart = "on-failure";
  #   };
  # };
}
{ config, pkgs, ... }:

{
  # Script per la tua configurazione dual monitor
  environment.etc."xrandr-scripts/setup-monitors.sh" = {
    text = ''
      #!/bin/sh
      # DP-4: Monitor principale a sinistra (1920x1080 @ 200Hz)
      # HDMI-0: Monitor secondario a destra (1920x1080 @ 74.97Hz)
      ${pkgs.xorg.xrandr}/bin/xrandr \
        --output DP-4 --primary --mode 1920x1080 --rate 200 --pos 0x0 --rotate normal \
        --output HDMI-0 --mode 1920x1080 --rate 74.97 --pos 1920x0 --rotate normal
    '';
    mode = "0755";
  };
}

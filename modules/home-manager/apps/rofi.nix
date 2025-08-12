    { config, pkgs, settings, ... }:

    {
      programs.rofi = {
        enable = true;
        package = pkgs.rofi-wayland; # Or pkgs.rofi
        terminal = "${pkgs.kitty}/bin/kitty";
        theme = ./rofi.rasi;
        extraConfig = {
          modi = "drun";
          show-icons = true;
        };
      };
    }
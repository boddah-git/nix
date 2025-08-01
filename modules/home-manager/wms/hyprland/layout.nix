# █▀▄▀█ █▀█ █▄░█ █ ▀█▀ █▀█ █▀█ █▀
# █░▀░█ █▄█ █░▀█ █ ░█░ █▄█ █▀▄ ▄█

# Set your monitor configuration here
# See https://wiki.hyprland.org/Configuring/Monitors/
# For a sample file, please refer to https://github.com/prasanthrangan/hyprdots/blob/main/Configs/.config/hypr/monitors.t2

{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = {
    general = {
      gaps_in = 8;
      gaps_out = 16;
      border_size = 2;
      allow_tearing = true;
      "col.active_border" = "rgba(${config.lib.stylix.colors.base0D}ff)";
      "col.inactive_border" = "rgba(${config.lib.stylix.colors.base02}ff)";
    };

    cursor = {
      inactive_timeout = 5;
    };

    decoration = {
      dim_special = 0.5;
      rounding = details.rounding;
      blur = {
        enabled = true;
        special = true;
        brightness = 1.0;
        contrast = 1.0;
        noise = 0.02;
        passes = 3;
        size = 10;
      };

      shadow = {
        enabled = details.shadow;
        ignore_window = false;
        offset = "2 2";
        range = 20;
        color = "rgba(${config.lib.stylix.colors.base00}ff)";
      };
    };
  };
}
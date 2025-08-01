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
    };

    cursor = {
      inactive_timeout = 5;
    };

    decoration = {
      dim_special = 0.5;
      rounding = 10;
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
        enabled = true;
        ignore_window = false;
        offset = "2 2";
        range = 20;
      };
    };
  };
}
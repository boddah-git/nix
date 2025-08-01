# █▀▀ █▄░█ █░█
# ██▄ █░▀█ ▀▄▀

# See https://wiki.hyprland.org/Configuring/Environment-variables/

{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "caelestia-shell -d"
    ];
  };
}
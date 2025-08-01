# █▀▄▀█ █▀█ █▄░█ █ ▀█▀ █▀█ █▀█ █▀
# █░▀░█ █▄█ █░▀█ █ ░█░ █▄█ █▀▄ ▄█

# Set your monitor configuration here
# See https://wiki.hyprland.org/Configuring/Monitors/
# For a sample file, please refer to https://github.com/prasanthrangan/hyprdots/blob/main/Configs/.config/hypr/monitors.t2

{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = {
    monitor = [ ",preferred,auto,1" ]
  };
}
# █▄▀ █▀▀ █▄█ █▄▄ █ █▄░█ █▀▄ █ █▄░█ █▀▀ █▀
# █░█ ██▄ ░█░ █▄█ █ █░▀█ █▄▀ █ █░▀█ █▄█ ▄█

# See https://wiki.hyprland.org/Configuring/Keywords/
#  &  https://wiki.hyprland.org/Configuring/Binds/

{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = {
    "$mainMod" = "SUPER";
    "$term" = "kitty";
    "$editor" = "code";
    "$file" = "dolphin";
    "$browser" = "firefox";

    env = [
      "XDG_CURRENT_DESKTOP,Hyprland"
      "XDG_SESSION_TYPE,wayland"
      "XDG_SESSION_DEKSTOP,Hyprland"
      "QT_QPA_PLATFORM,wayland"
      "QT_WAYLAND_DISABLE_WINDOWDECORATION,1"
      "QT_AUTO_SCREEN_SCALE_FACTOR,1"
      "MOZ_ENABLE_WAYLAND,1"
      "XDG_SESSION_TYPE,wayland"
    ];

    bind = [
      "$mainMod, T, exec, $term" # launch terminal emulator
      "$mainMod, E, exec, $file" # launch file manager
      "$mainMod, C, exec, $editor" # launch text editor
      "$mainMod, F, exec, $browser" # launch web browser

      # Switch workspaces
      "$mainMod, 1, workspace, 1"
      "$mainMod, 2, workspace, 2"
      "$mainMod, 3, workspace, 3"
      "$mainMod, 4, workspace, 4"
      "$mainMod, 5, workspace, 5"
      "$mainMod, 6, workspace, 6"
      "$mainMod, 7, workspace, 7"
      "$mainMod, 8, workspace, 8"
      "$mainMod, 9, workspace, 9"
      "$mainMod, 0, workspace, 10"
    ];
  };
}
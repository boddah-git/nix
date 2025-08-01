{ inputs, config, lib, settings, pkgs, ... }:

{
  imports = [
    ./hyprland/binds.nix
    ./hyprland/env.nix
    ./hyprland/input.nix
    ./hyprland/monitor.nix
    ./hyprland/layout.nix
    ./hyprland/hyprlock.nix
    ./hyprland/caelestia.nix
    ./hyprland/exec.nix
    ./hyprland/cursor.nix
  ];

  home.packages = with pkgs; [
    hyprlock
    xfce.thunar
    xdg-desktop-portal-hyprland
    xdg-desktop-portal-gtk
  ];

  programs.kitty.enable = true;

  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
  };
}

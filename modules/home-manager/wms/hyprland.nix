{ inputs, config, lib, settings, pkgs, ... }:

{
  imports = [
    ./hyprland/binds.nix
    ./hyprland/env.nix
    ./hyprland/input.nix
    ./hyprland/monitor.nix
    ./hyprland/layout.nix
  ];

  home.packages = with pkgs; [
    hyprcursor
    xdg-desktop-portal-hyprland
    xdg-desktop-portal-gtk
  ];

  programs.kitty.enable = true;

  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
  };
}

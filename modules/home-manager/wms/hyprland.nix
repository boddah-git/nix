{ inputs, config, lib, settings, pkgs, ... }:

{
  imports = [
    ./hyprland/binds.nix
  ];

  home.packages = with pkgs; [
    hyprpaper
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

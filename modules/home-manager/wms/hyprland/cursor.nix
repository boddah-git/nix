{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    hyprcursor
    rose-pine-hyprcursor
  ];

  wayland.windowManager.hyprland.settings = {
    env = [
      "HYPRCURSOR_THEME, rose-pine-hyprcursor"
      "HYPRCURSOR_SIZE, 32"
      "XCURSOR_THEME, rose-pine-hyprcursor"
      "XCURSOR_SIZE, rose-pine-hyprcursor"
    ];

    "exec-once" = [
      "hyprctl setcursor rose-pine-hyprcursor 32"
    ];
  };

  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    name = "HyprCursor";
    package = pkgs.rose-pine-hyprcursor; # or your cursor package, e.g., pkgs.bibata-cursors
    size = 32;
  };

  # Optional: set environment variables explicitly
  home.sessionVariables = {
    XCURSOR_THEME = "HyprCursor";
    XCURSOR_SIZE = "32";
  };
}
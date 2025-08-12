{ config, pkgs, ... }:

{
  config.services.hyprpaper = {
    enable = true;
    settings = {
      ipc = "off";
      splash = false;
      preload = [
        ~/Pictures/Wallpapers/abstract-swirls.jpg
      ];

      wallpapers = [
        ", ~/Pictures/Wallpapers/abstract-swirls.jpg"
      ];
    };
  };
}
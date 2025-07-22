{ inputs, config, lib, settings, pkgs, ... }:

{
    imports = [
        ./hyprland/binds.nix
    ];

    home.packages = with pkgs; [
        hyprpaper
        hyprcursor
    ];

    programs.kitty.enable = true;

    wayland.windowManager.hyprland = {
        enable = true;
        package = inputs.hyprland.packages.${pkgs.system}.hyprland;
        systemd.enable = true;
    };
}

{ inputs, pkgs, settings, lib, config, ... }: let
in {
    home.packages = with pkgs; [
        inputs.caelestia.packages.${pkgs.system}.default
    ];

    wayland.windowManager.hyprland.settings = {
        exec-once = [
            "caelestia-shell -d"
        ];
    };
}


    

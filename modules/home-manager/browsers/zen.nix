{ inputs, pkgs, settings, lib, config, ... }: let
in {
    home.packages = with pkgs; [
        inputs.zen-browser.packages.${pkgs.system}.default
    ];
}


    

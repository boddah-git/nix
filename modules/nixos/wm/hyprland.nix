{ pkgs, inputs, ... }:
{
    programs.hyprland = {
        enable = true;
        withUWSM = true;
    };

    security.pam.services.hyprlock = {};
    services.displayManager.sddm.enable = true;

    fonts.packages = with pkgs; [
        jetbrains-mono
        material-design-icons
    ];
}
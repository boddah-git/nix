{ inputs, config, pkgs, ... }:

{
    imports = [
        ./common/wayland.nix
    ];

    programs.hyprland = {
        enable = true;
        xwayland.enable = true;
        package = inputs.hyprland.packages.${pkgs.system}.default;
        portalPackage = inputs.hyprland.packages.${pkgs.system}.xdg-desktop-portal-hyprland;
    };

#    programs.hyprland.package = let
#      patch = ./displaylink-custom.patch;
#    in
#    inputs.hyprland.packages.${pkgs.system}.default.overrideAttrs (self: super: {
#      postUnpack = ''
#        rm $sourceRoot/subprojects/wlroots-hyprland/patches/nvidia-hardware-cursors.patch
#        cp ${patch} $sourceRoot/subprojects/wlroots-hyprland/patches
#      '';
#    });

    nix.settings = {
        substituters = ["https://hyprland.cachix.org"];
        trusted-public-keys = ["hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="];
    };

    environment.sessionVariables = {
        WLR_NO_HARDWARE_CURSORS = "1";
        NIXOS_OZONE_WL = "1";
    };

    hardware = {
        graphics.enable = true;
        nvidia.modesetting.enable = true;
    };

    xdg.portal = {
        enable = true;
        xdgOpenUsePortal= true;
        config = {
            # common.default = ["gtk"];
            hyprland.default = ["hyprland"];
        };

        extraPortals = [
            # pkgs.xdg-desktop-portal-gtk
        ];
    };
}
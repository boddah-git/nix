{ self, inputs, ... }: {

  # System-wide: needed so fonts are available even before home-manager
  # activates (e.g. SDDM greeter, other users, TTY).
  flake.nixosModules.fonts = { pkgs, ... }: {
    fonts = {
      packages = [ pkgs.nerd-fonts.jetbrains-mono ];
      fontconfig.enable = true;
    };
  };

  # Portable: for standalone home-manager use on non-NixOS boxes, or as
  # a fallback if this profile isn't layered on the fonts NixOS module.
  flake.homeModules.fonts = { pkgs, ... }: {
    home.packages = [ pkgs.nerd-fonts.jetbrains-mono ];
    fonts.fontconfig.enable = true;
  };
}

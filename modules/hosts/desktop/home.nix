{ self, inputs, ... }: {
  flake.homeModules.desktop = {
    imports = [
      self.homeModules.fonts
      self.homeModules.niri
      self.homeModules.noctalia
      self.homeModules.kitty
      self.homeModules.fish
      self.homeModules.neovim
      # ...
    ];

    home = {
      username = "boddah";
      homeDirectory = "/home/boddah";
      stateVersion = "26.05";
    };
  };

  # Standalone entry point — portable to non-NixOS boxes:
  #   home-manager switch --flake .#you@desktop
  flake.homeConfigurations."boddah@desktop" = inputs.home-manager.lib.homeManagerConfiguration {
    pkgs = inputs.nixpkgs.legacyPackages.x86_64-linux;
    modules = [ self.homeModules.desktop ];
  };
}

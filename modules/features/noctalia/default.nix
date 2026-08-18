{ self, inputs, ... }: {
  flake.nixosModules.noctalia = { pkgs, ... }: {
    environment.systemPackages = [
      inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
    ];
  };

  flake.homeModules.noctalia = { pkgs, ... }: {
    home.packages = [ self.packages.${pkgs.stdenv.hostPlatform.system}.noctalia ];

    # Deploy user-templates.toml to Noctalia's config directory
    xdg.configFile."noctalia/user-templates.toml".source = ./user-templates.toml;
  };

  perSystem = { pkgs, system, ... }: {
    packages.noctalia = inputs.wrapper-modules.wrappers.noctalia-shell.wrap {
      inherit pkgs;
      settings = (fromTOML (builtins.readFile ./config.toml));
      package = inputs.noctalia.packages.${system}.default;
    };
  };
}

{ self, inputs, ... }: {

  flake.homeModules.neovim = { pkgs, ... }: {
    home.packages = [
      self.packages.${pkgs.stdenv.hostPlatform.system}.neovim
    ];

    xdg.configFile."nvim/lua/matugen-template.lua".source = ./matugen-template.lua;
  };

  perSystem = { pkgs, ... }: {
    packages.neovim =
      (inputs.nvf.lib.neovimConfiguration {
        inherit pkgs;
        modules = [
          ./_core
          ./_languages
          ./_plugins
          ./_keymaps
          ./_ui
        ];
      }).neovim;
  };
}

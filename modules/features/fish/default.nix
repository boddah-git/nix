{ self, inputs, ... }: {
  flake.homeModules.fish = { pkgs, lib, ... }: {
    imports = [
      ./_aliases.nix
      ./_behavior.nix
      # ./_prompt.nix
    ]
    ++ (
      # Auto-discover every plugin file in ./_plugins safely
      let
        pluginDir = ./_plugins;
      in
      if builtins.pathExists pluginDir then
        map (n: import (pluginDir + "/${n}")) (
          lib.filter (n: lib.hasSuffix ".nix" n) (builtins.attrNames (builtins.readDir pluginDir))
        )
      else
        [ ]
    );

    # Base configuration for fish
    programs.fish.enable = true;

    home.packages = with pkgs; [
      eza
      bat
      fd
      ripgrep
      tree
      wl-clipboard
      btop
      fastfetch
      gh
      lazygit
    ];
  };
}

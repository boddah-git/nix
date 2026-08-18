{ self, inputs, ... }: {

  flake.homeModules.kitty = { pkgs, lib, ... }: {
    imports = [
      ./_appearance.nix
      ./_behavior.nix
      ./_includes.nix
    ];

    programs.kitty.enable = true;
  };

}

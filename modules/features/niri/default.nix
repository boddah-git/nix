{ self, inputs, ... }: {

  flake.nixosModules.niri = { pkgs, lib, ... }: {
    programs.niri = {
      enable = true;
      package = self.packages.${pkgs.stdenv.hostPlatform.system}.niri;
    };
  };

  flake.homeModules.niri = { pkgs, lib, ... }: {
    home.packages = [
      self.packages.${pkgs.stdenv.hostPlatform.system}.niri
    ];
  };

  perSystem =
    {
      pkgs,
      lib,
      self',
      constants,
      ...
    }:

    let
      fragments = [
        (import ./_input.nix { inherit constants; })
        (import ./_layout.nix { })
        (import ./_binds.nix { inherit lib constants; })
        (import ./_noctalia-binds.nix { inherit lib self'; })
        (import ./_animations.nix { })
        (import ./_window-rules.nix { })
        (import ./_startup.nix { inherit lib self'; })
        (import ./_includes.nix { })
      ];
      merged = lib.foldl' lib.recursiveUpdate { } fragments;
      extraSettings = merged.extraSettings or [ ];
      settings = builtins.removeAttrs merged [ "extraSettings" ];
    in
    {
      packages.niri = inputs.wrapper-modules.wrappers.niri.wrap {
        inherit pkgs settings extraSettings;

        runtimePkgs = [
          self'.packages.noctalia
        ];
      };
    };
}

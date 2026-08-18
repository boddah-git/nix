{ pkgs, ... }: {
  vim.lsp.servers.nixd.enable = true;
  vim.lsp.servers.nixd.settings = {
    nixd = {
      nixpkgs = {
        expr = ''
          let flake = builtins.getFlake (builtins.toString ./.);
          in import flake.inputs.nixpkgs {
            system = "${pkgs.stdenv.hostPlatform.system}";
          }
        '';
      };
      formatting = {
        command = [ "nixfmt" ];
      };
      options = {
        nixos = {
          expr = "(builtins.getFlake (builtins.toString ./.)).nixosConfigurations.desktop.options";
        };
        home_manager = {
          expr = "(builtins.getFlake (builtins.toString ./.)).homeConfigurations.\"desktop\".options";
        };
      };
    };
  };

  vim.languages.nix = {
    enable = true;
    format = {
      enable = true;
      type = [ "nixfmt" ];
    };
    extraDiagnostics = {
      enable = true;
      types = [
        "statix"
        "deadnix"
      ];
    };
  };
}

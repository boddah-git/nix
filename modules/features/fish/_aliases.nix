{ lib, ... }:

{
  programs.fish = {
    shellAliases = {
      ll = "eza -l";
      g = "git";
      ls = "eza";
      cat = "bat";
      find = "fd";
      grep = "rg";
      nixup = "sudo nixos-rebuild switch --flake ~/nix#desktop";
      nixgc = "nix-collect-garbage -d";
    };

    shellAbbrs = {
      gc = "git commit";
      nixpac = "nix-shell -p";
    };
  };
}

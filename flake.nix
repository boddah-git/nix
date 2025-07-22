{
  description = "Boddah NixOS";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland.url = "github:hyprwm/Hyprland";
    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... } @ inputs: let
      pkgs = import nixpkgs {system = settings.system;};
      settings = import (./. + "/settings.nix") {inherit pkgs inputs;};
      lib = nixpkgs.lib;
    in {
      nixosConfigurations = {
        ${settings.hostname} = lib.nixosSystem {
#           system = settings.system;
          modules = [ (./. + "/profiles" + ("/" + settings.profile) + "/configuration.nix") ];
          specialArgs = { inherit inputs; inherit settings; };
        };
      };
      
      homeConfigurations = {
        ${settings.username} = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.${settings.system};
          modules = [ (./. + "/profiles" + ("/" + settings.profile) + "/home.nix")];
          extraSpecialArgs = { inherit inputs; inherit settings; };
        };
      };
    };
}

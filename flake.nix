{
  description = "Boddah NixOS";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";

    # Home Manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Hyprland
    hyprland.url = "github:hyprwm/Hyprland";

    caelestia.url = "github:caelestia-dots/shell";
  };

  outputs = { self, nixpkgs, home-manager, ... } @ inputs: let
    inherit (self) outputs;
    settings = import (./. + "/settings.nix") { inherit pkgs inputs; };
    pkgs = import nixpkgs { system = settings.system; };
    lib = nixpkgs.lib;

    in {
      # NixOS configuration entrypoint
      # Available through 'nixos-rebuild --flake .#your-hostname'
      nixosConfigurations = {
        ${settings.hostname} = lib.nixosSystem {
          specialArgs = { inherit inputs outputs settings; };
          modules = [ (./. + "/profiles" + ("/" + settings.profile) + "/configuration.nix") ];
        };
      };
      
      # Standalone home-manager configuration entrypoint
      # Available through 'home-manager --flake .#your-username@your-hostname'
      homeConfigurations = {
        ${settings.username} = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.${settings.system}; # Home-manager requires 'pkgs' instance
          extraSpecialArgs = { inherit inputs outputs settings; };
          modules = [ (./. + "/profiles" + ("/" + settings.profile) + "/home.nix")];
        };
      };
    };
}

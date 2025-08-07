{ inputs, config, lib, settings, pkgs, ... }:

{
  imports = [
    ./subjects/protos.nix
    ./subjects/paw.nix
  ];
}

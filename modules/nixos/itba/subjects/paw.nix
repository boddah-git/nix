{ inputs, config, lib, settings, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    jetbrains.idea-ultimate
  ];


}
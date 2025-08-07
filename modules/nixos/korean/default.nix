{ inputs, config, lib, settings, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    fcitx5
  ];
}
{ settings, config, pkgs, lib, ... }:
{
  environment.systemPackages = with pkgs; [
    fish
    zoxide
    rbenv
    starship
    fzf
    fd
  ];

}
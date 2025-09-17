{ inputs, config, lib, settings, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    python314
    jupyter
    python314Packages.notebook
    python314Packages.venvShellHook
    python314Packages.pyzmq
    stdenv.cc.cc.lib
  ];
}

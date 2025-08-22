{ inputs, config, lib, settings, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    python3Full
    jupyter
    python313Packages.notebook
    python313Packages.venvShellHook
    python313Packages.pyzmq
    stdenv.cc.cc.lib
  ];
}

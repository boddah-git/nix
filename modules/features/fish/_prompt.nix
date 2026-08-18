{ lib, ... }:

{
  programs.fish = {
    interactiveShellInit = ''
      # Add custom prompt tweaks or environment settings
      set -gx EDITOR "nvim"
    '';
  };
}

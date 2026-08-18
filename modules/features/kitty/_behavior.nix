{ pkgs, ... }:

let
  constants = import ../../_lib/constants.nix { };
in
{
  programs.kitty = {
    settings = {
      confirm_os_window_close = 0;
      enable_audio_bell = false;
      scrollback_lines = 10000;
      shell = "${pkgs.${constants.apps.shell}}/bin/${constants.apps.shell}";
    };
  };
}

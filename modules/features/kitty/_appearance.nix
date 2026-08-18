{ ... }:
let
  constants = import ../../_lib/constants.nix { };
in
{
  programs.kitty = {
    font = {
      name = constants.fonts.main;
      size = constants.fonts.size;
    };
    settings = {
      background_opacity = "0.75";
      background_blur = 1;
      dynamic_background_opacity = true;
      placement_strategy = "center";
      window_padding_width = 0;
    };
  };
}

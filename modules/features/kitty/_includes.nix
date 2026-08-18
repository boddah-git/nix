{ lib, ... }:

{
  programs.kitty = {
    extraConfig = ''
      include ~/.config/kitty/themes/noctalia.conf
    '';
  };
}

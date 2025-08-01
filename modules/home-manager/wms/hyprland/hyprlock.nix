{settings, config, pkgs, ... }:

{
  programs.hyprlock.enable = true;
  programs.hyprlock.settings = {
    general = {
        grace = 0;
        ignore_empty_input = true;
    };

    input-field = {
        monitor = "";
        size = "250, 50";
        outline_thickness = 0;
        dots_size = 0.26;
        dots_spacing = 0.64;
        dots_center = true;
        fade_on_empty = true;
        placeholder_text = "<i>Password...</i>";
        hide_input = false;
        check_color = "rgb(40, 200, 250)";
        position = "0, 50";
        halign = "center";
        valign = "bottom";
    };
  };

}
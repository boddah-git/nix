# █ █▄░█ █▀█ █░█ ▀█▀
# █ █░▀█ █▀▀ █▄█ ░█░

# See https://wiki.hyprland.org/Configuring/Variables/

{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = {
    input = {
      kb_layout = us;
      follow_mouse = 1;

      touchpad {
          natural_scroll = no;
      };

      sensitivity = 0;
      force_no_accel = 1;
      numlock_by_default = true;
    };

    # device = {
    #     name = "logitech-usb-receiver-mouse";
    #     sensitivity = -1.0;
    # };

    gestures = {
        workspace_swipe = true;
        workspace_swipe_fingers = 3;
        workspace_swipe_distance = 200;
    };
  };
}
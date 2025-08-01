# █▄▀ █▀▀ █▄█ █▄▄ █ █▄░█ █▀▄ █ █▄░█ █▀▀ █▀
# █░█ ██▄ ░█░ █▄█ █ █░▀█ █▄▀ █ █░▀█ █▄█ ▄█

# See https://wiki.hyprland.org/Configuring/Keywords/
#  &  https://wiki.hyprland.org/Configuring/Binds/

{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = {
    "$mainMod" = "Super";
    "$term" = "kitty";
    "$editor" = "code";
    "$file" = "thunar";
    "$browser" = "firefox";

    env = [
      "XDG_CURRENT_DESKTOP,Hyprland"
      "XDG_SESSION_TYPE,wayland"
      "XDG_SESSION_DEKSTOP,Hyprland"
      "QT_QPA_PLATFORM,wayland"
      "QT_WAYLAND_DISABLE_WINDOWDECORATION,1"
      "QT_AUTO_SCREEN_SCALE_FACTOR,1"
      "MOZ_ENABLE_WAYLAND,1"
      "XDG_SESSION_TYPE,wayland"
    ];

    bind = [
      "$mainMod, Return, exec, $term" # launch terminal emulator
      "$mainMod, E, exec, $file" # launch file manager
      "$mainMod, C, exec, $editor" # launch text editor
      "$mainMod, B, exec, $browser" # launch web browser

      "$mainMod, Q, killactive,"

      # Switch workspaces
      "$mainMod, 1, workspace, 1"
      "$mainMod, 2, workspace, 2"
      "$mainMod, 3, workspace, 3"
      "$mainMod, 4, workspace, 4"
      "$mainMod, 5, workspace, 5"
      "$mainMod, 6, workspace, 6"
      "$mainMod, 7, workspace, 7"
      "$mainMod, 8, workspace, 8"
      "$mainMod, 9, workspace, 9"
      "$mainMod, 0, workspace, 10"

      # Move focused window to a workspace
      "$mainMod+Shift, 1, movetoworkspace, 1"
      "$mainMod+Shift, 2, movetoworkspace, 2"
      "$mainMod+Shift, 3, movetoworkspace, 3"
      "$mainMod+Shift, 4, movetoworkspace, 4"
      "$mainMod+Shift, 5, movetoworkspace, 5"
      "$mainMod+Shift, 7, movetoworkspace, 7"
      "$mainMod+Shift, 6, movetoworkspace, 6"
      "$mainMod+Shift, 8, movetoworkspace, 8"
      "$mainMod+Shift, 9, movetoworkspace, 9"
      "$mainMod+Shift, 0, movetoworkspace, 10"

      "Ctrl+Alt, Delete, global, caelestia:session"
      "$mainMod, K, global, caelestia:showall"
      "$mainMod, L, global, caelestia:lock"
      "$mainMod, A, global, caelestia:launcher"
    ];

    bindm = [
      "$mainMod, mouse:272, movewindow"
      "$mainMod, mouse:273, resizewindow"
    ];

    exec = "hyprctl dispatch submap global";
    submap = "global";

    bindin = [
      "$mainMod, catchall, global, caelestia:launcherInterrupt"
      "$mainMod, mouse:272, global, caelestia:launcherInterrupt"
      "$mainMod, mouse:273, global, caelestia:launcherInterrupt"
      "$mainMod, mouse:274, global, caelestia:launcherInterrupt"
      "$mainMod, mouse:275, global, caelestia:launcherInterrupt"
      "$mainMod, mouse:276, global, caelestia:launcherInterrupt"
      "$mainMod, mouse:277, global, caelestia:launcherInterrupt"
      "$mainMod, mouse_up, global, caelestia:launcherInterrupt"
      "$mainMod, mouse_down, global, caelestia:launcherInterrupt"
    ];

    bindl = [
      # Misc
      "Ctrl+Alt, N, global, caelestia:clearNotifs"

      # Brightness
      ", XF86MonBrightnessUp, global, caelestia:brightnessUp"
      ", XF86MonBrightnessDown, global, caelestia:brightnessDown"
    ];

  };
}

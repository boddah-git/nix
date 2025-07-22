{ settings, lib, pkgs, ... }:
{
  home.packages = with pkgs; [
    nerd-fonts.caskaydia-cove
  ];

  programs.kitty = {
    enable = true;
    shellIntegration.enableZshIntegration = true;
    settings = {
      shell = "/run/current-system/sw/bin/zsh";
      active_tab_font_style = "bold";
      bold_font = "auto";
      bold_italic_font = "auto";
      confirm_os_window_close = 0;
      cursor_blink_interval = "-1";
      cursor_shape = "underline";
      cursor_stop_blinking_after = 0;
      cursor_underline_thickness = "1.5";
      disable_ligatures = "never";
      font_family = "CaskaydiaCove Nerd Font Mono";
      # font_size = settings.themeDetails.fontSize;
      hide_window_decorations = "titlebar-only";
      inactive_tab_font_style = "normal";
      inactive_text_alpha = "1.0";
      italic_font = "auto";
      placement_strategy = "center";
      resize_in_steps = "yes";
      scrollback_lines = 10000;
      touch_scroll_multiplier = "1.0";
      wheel_scroll_multiplier = "5.0";
      window_margin_width = 0;
      window_padding_width = 15;
      enable_audio_bell = "no";
      cursor_trail = 4;
    };
  };
}
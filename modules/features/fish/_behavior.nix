{ lib, ... }:

{
  programs.fish = {
    interactiveShellInit = ''
      set -g fish_greeting ""
      fish_vi_key_bindings

      if not set -q tide_left_prompt_items
        tide configure --auto \
          --style=Classic \
          --prompt_colors='16 colors' \
          --show_time='24-hour format' \
          --classic_prompt_separators=Slanted \
          --powerline_prompt_heads=Slanted \
          --powerline_prompt_tails=Flat \
          --powerline_prompt_style='Two lines, character' \
          --prompt_connection=Dotted \
          --powerline_right_prompt_frame=No \
          --prompt_spacing=Sparse \
          --icons='Many icons' \
          --transient=No
      end
    '';
  };
}

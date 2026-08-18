{ lib, constants }:
{
  binds = {
    # ─── Applications ───
    "Mod+Return".spawn-sh = constants.apps.terminal;
    "Mod+B".spawn-sh = constants.apps.browser;
    "Mod+E".spawn-sh = constants.apps.file-explorer;

    # ─── Utilities ───
    "Mod+Q".close-window = { };
    "Mod+Shift+S".screenshot = { };
    "Control+Shift+2".screenshot-screen = { };
    "Control+Shift+3".screenshot-window = { };
    "Mod+Tab".toggle-overview = { };

    # ─── Modes ───
    "Mod+T".toggle-window-floating = { };
    "Mod+F".maximize-column = { };
    "Mod+Control+F".fullscreen-window = { };
    "Mod+W".toggle-column-tabbed-display = { };

    # ─── Window Movement and Focus ───
    # ────── Focus ──────
    "Mod+Left".focus-column-left = { };
    "Mod+Right".focus-column-right = { };
    "Mod+Up".focus-workspace-up = { };
    "Mod+Down".focus-workspace-down = { };

    "Mod+Control+Left".focus-monitor-left = { };
    "Mod+Control+Right".focus-monitor-right = { };
    "Mod+Control+Up".focus-monitor-up = { };
    "Mod+Control+Down".focus-monitor-down = { };

    "Mod+WheelScrollUp" = _: {
      props.cooldown-ms = 150;
      content.focus-workspace-up = { };
    };
    "Mod+WheelScrollDown" = _: {
      props.cooldown-ms = 150;
      content.focus-workspace-down = { };
    };

    "Mod+Home".focus-column-first = { };
    "Mod+End".focus-column-last = { };

    "Mod+1".focus-workspace = 0;
    "Mod+2".focus-workspace = 1;
    "Mod+3".focus-workspace = 2;
    "Mod+4".focus-workspace = 3;
    "Mod+5".focus-workspace = 4;
    "Mod+6".focus-workspace = 5;
    "Mod+7".focus-workspace = 6;
    "Mod+8".focus-workspace = 7;
    "Mod+9".focus-workspace = 8;

    # ────── Move ──────
    "Mod+Shift+Left".move-column-left = { };
    "Mod+Shift+Right".move-column-right = { };
    "Mod+Shift+Up".move-column-to-workspace-up = { };
    "Mod+Shift+Down".move-column-to-workspace-down = { };

    "Mod+Shift+Control+Left".move-column-to-monitor-left = { };
    "Mod+Shift+Control+Right".move-column-to-monitor-right = { };
    "Mod+Shift+Control+Up".move-column-to-monitor-up = { };
    "Mod+Shift+Control+Down".move-column-to-monitor-down = { };

    "Mod+Shift+WheelScrollUp" = _: {
      props.cooldown-ms = 150;
      content.move-column-to-workspace-up = { };
    };
    "Mod+Shift+WheelScrollDown" = _: {
      props.cooldown-ms = 150;
      content.move-column-to-workspace-down = { };
    };

    "Mod+Shift+1".move-column-to-workspace = 0;
    "Mod+Shift+2".move-column-to-workspace = 1;
    "Mod+Shift+3".move-column-to-workspace = 2;
    "Mod+Shift+4".move-column-to-workspace = 3;
    "Mod+Shift+5".move-column-to-workspace = 4;
    "Mod+Shift+6".move-column-to-workspace = 5;
    "Mod+Shift+7".move-column-to-workspace = 6;
    "Mod+Shift+8".move-column-to-workspace = 7;
    "Mod+Shift+9".move-column-to-workspace = 8;

    # ─── Layout Control ───
    "Mod+Shift+F".expand-column-to-available-width = { };
    "Mod+C".center-column = { };
    "Mod+Control+C".center-visible-columns = { };
    "Mod+Minus".set-column-width = "-10%";
    "Mod+Equal".set-column-width = "+10%";
    "Mod+Shift+Minus".set-window-height = "-10%";
    "Mod+Shift+Equal".set-window-height = "+10%";
  };
}

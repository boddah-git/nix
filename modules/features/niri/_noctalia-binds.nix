{
  lib,
  self',
}:
{
  binds = {
    "Mod+Space".spawn-sh = "${lib.getExe self'.packages.noctalia} msg panel-toggle launcher";
    "Mod+Backspace".spawn-sh = "${lib.getExe self'.packages.noctalia} msg panel-toggle session";

    "XF86AudioRaiseVolume".spawn-sh = "${lib.getExe self'.packages.noctalia} msg volume-up";
    "XF86AudioLowerVolume".spawn-sh = "${lib.getExe self'.packages.noctalia} msg volume-down";
    "XF86AudioMute".spawn-sh = "${lib.getExe self'.packages.noctalia} msg volume-mute";
    "XF86MonBrightnessUp".spawn-sh = "${lib.getExe self'.packages.noctalia} msg brightness-up";
    "XF86MonBrightnessDown".spawn-sh = "${lib.getExe self'.packages.noctalia} msg brightness-down";
  };
}

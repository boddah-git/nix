{ constants }:
{
  input.keyboard = {
    xkb.layout = constants.keyboard.layout;
    xkb.variant = constants.keyboard.variant;

    numlock = { };
  };

  input.touchpad = {
    tap = { };
    natural-scroll = { };
  };

  input.focus-follows-mouse = { };
  input.workspace-auto-back-and-forth = { };
}

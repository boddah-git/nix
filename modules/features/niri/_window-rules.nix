{ }:
{
  window-rules = [
    # Always float Firefox PiP windows
    {
      matches = [
        {
          app-id = "firefox$";
          title = "^Picture-in-Picture$";
        }
      ];
      open-floating = true;
    }

    {
      matches = [
        {
          app-id = "^kitty$";
        }
      ];
      draw-border-with-background = false;
    }

    {
      matches = [
        { app-id = "code"; }
      ];
      open-maximized = true;
    }

    {
      geometry-corner-radius = 10;
      clip-to-geometry = true;

    }
  ];
}

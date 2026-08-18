{ }: {
  animations = {
    workspace-switch.spring = _: {
      props = {
        damping-ratio = 1.0;
        stiffness = 1000;
        epsilon = 0.0001;
      };
    };

    window-open = {
      duration-ms = 200;
      curve = "ease-out-quad";
    };

    window-close = {
      duration-ms = 200;
      curve = "ease-out-cubic";
    };

    horizontal-view-movement.spring = _: {
      props = {
        damping-ratio = 1.0;
        stiffness = 900;
        epsilon = 0.0001;
      };
    };

    window-movement.spring = _: {
      props = {
        damping-ratio = 1.0;
        stiffness = 800;
        epsilon = 0.0001;
      };
    };

    window-resize.spring = _: {
      props = {
        damping-ratio = 1.0;
        stiffness = 1000;
        epsilon = 0.0001;
      };
    };

    config-notification-open-close.spring = _: {
      props = {
        damping-ratio = 0.6;
        stiffness = 1200;
        epsilon = 0.001;
      };
    };

    screenshot-ui-open = {
      duration-ms = 300;
      curve = "ease-out-quad";
    };

    overview-open-close.spring = _: {
      props = {
        damping-ratio = 1.0;
        stiffness = 900;
        epsilon = 0.0001;
      };
    };
  };
}

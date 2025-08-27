{ inputs, config, lib, settings, pkgs, ...}:

{
  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5.addons = with pkgs; [
      fcitx5-gtk
      fcitx5-hangul
    ];
  };

  environment.systemPackages = with pkgs; [
    kdePackages.fcitx5-configtool
    fcitx5-hangul
  ];

  environment.variables = {
    GTK_IM_MODULE = "fcitx";
    QT_IM_MODULE = "fcitx";
    XMODIFIERS = "@im=fcitx";
    INPUT_METHOD = "fcitx";
  };

  services.dbus.enable = true;
}
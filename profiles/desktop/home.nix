{ inputs, lib, config, pkgs, settings, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  let
    hm = ../../modules/home-manager;
    apps = hm/apps;
    shells = hm/shells;
    wms = hm/wms;
    editors = hm/editors;
    browsers = hm/browsers;
  in {
    imports = [
      apps/kitty.nix
      apps/fastfetch.nix
      shells/${settings.shell}.nix
    ] ++ (map (wm: wms/${wm}.nix) settings.wms)
      ++ (map (editor: editors/${editor}/default.nix) settings.editors)
      ++ (map (browser: browsers/${browser}.nix) settings.browsers);
  }
  nixpkgs.config.allowUnfree = true;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  programs.git.enable = true;

  home {
    username = settings.username;
    homeDirectory = "/home/${settings.username}";
    packages = with pkgs; [  ];
    file = { };
    sessionVariables = {
      EDITOR = settings.preferredEditor;
      BROWSER = settings.prefferedBrowser;
    };
    stateVersion = "25.05"; # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  };  
}

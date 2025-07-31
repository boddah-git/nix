{ inputs, outputs, lib, config, pkgs, settings, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  imports = [
    ../../modules/home-manager/apps/kitty.nix
    ../../modules/home-manager/apps/fastfetch.nix
    ../../modules/home-manager/shells/${settings.shell}.nix
  ] ++ (map (wm: ../../modules/home-manager/wms/${wm}.nix) settings.wms)
    ++ (map (editor: ../../modules/home-manager/editors/${editor}/default.nix) settings.editors);
    # ++ (map (browser: ../../modules/home-manager/browsers/${browser}.nix) settings.browsers);
  
  nixpkgs.config.allowUnfree = true;
  

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  programs.git.enable = true;

  home = {
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

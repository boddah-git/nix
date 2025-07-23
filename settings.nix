{ pkgs, inputs, ...}:
rec {
    # ---- SYSTEM SETTINGS ---- #
    system = "x86_64-linux";
    hostname = "nixos";
    profile = "desktop";
    timezone = "America/Argentina/Buenos_Aires";
    locale = "en_US.UTF-8";
    gpu = "nvidia";

    # ---- USER SETTINGS ---- #
    username = "boddah";
    name = "BODDAH";
    email = "boddah.bonsignore@gmail.com";
    
    dotfilesDir = "~/.dotfiles";

    shell = "zsh";
    shellPkg = pkgs.zsh;

    wms = [ "kde" "hyprland" ];

    browsers = [ "firefox" ];
    editors = [ "vscode" ];

    preferredEditor = "vscode";
    prefferedBrowser = "firefox";

    terminal = "kitty";
}

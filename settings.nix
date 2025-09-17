{ pkgs, inputs, ...}:
rec {
    # ---- SYSTEM SETTINGS ---- #
    system = "x86_64-linux";
    hostname = "nixos";
    profile = "laptop";
    timezone = "America/Argentina/Buenos_Aires";
    locale = "en_US.UTF-8";
    gpu = "amd";

    # ---- USER SETTINGS ---- #
    username = "lbonsenor";
    name = "lbonsenor";
    email = "lbonsenor@itba.edu.ar";
    
    dotfilesDir = "~/.dotfiles";

    shell = "fish";
    shellPkg = pkgs.fish;

    wms = [ "hyprland" ];

    browsers = [ "firefox" ];
    editors = [ "vscode" ];

    preferredEditor = "vscode";
    prefferedBrowser = "firefox";

    terminal = "kitty";
}

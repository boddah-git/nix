{ pkgs, inputs, ...}:
rec {
    system = "x86_64-linux";
    hostname = "nixos";
    username = "boddah";
    profile = "desktop";
    timezone = "America/Argentina/Buenos_Aires";
    locale = "en_US.UTF-8";

    shell = "zsh";
    shellPkg = pkgs.zsh;

    editors = ["vscode"];
    preferredEditor = "vscode";
    preferredBrowser = "zen";
    wms = ["kde" "hyprland"];
}

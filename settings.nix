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

    wms = ["kde" "hyprland"];
    wmType = if ((wm == "hyprland") || (wm == "plasma")) then "wayland" else "x11";

    browser = "firefox";
    terminal = "kitty";
    font = "CaskaydiaCove Nerd Font Mono";
}

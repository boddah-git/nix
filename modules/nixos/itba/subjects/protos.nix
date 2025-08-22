{ inputs, config, lib, settings, pkgs, ...}:

{
  # Protos 
  users.groups.wireshark = { };
  security.wrappers.dumpcap = {
    source = "${pkgs.wireshark}/bin/dumpcap";
    capabilities = "cap_net_raw,cap_net_admin=eip";
    owner = "root";
    group = "wireshark";

  };

  environment.systemPackages = with pkgs; [
    wireshark
    gcc
    man-pages
    man-pages-posix
  ];

  virtualisation.virtualbox.host.enable = true;
  users.extraGroups.vboxusers.members = [ settings.username ];

  virtualisation.virtualbox.host.enableExtensionPack = true;
  
  boot.blacklistedKernelModules = [ "kvm_amd" ];


}
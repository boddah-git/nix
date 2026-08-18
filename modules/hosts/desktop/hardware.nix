{ self, inputs, ... }: {
  flake.nixosModules.desktopHardware = { config, lib, pkgs, modulesPath, ... }: {
    imports = [ ];

    boot.initrd.availableKernelModules = [ "ata_piix" "ohci_pci" "ehci_pci" "ahci" "sd_mod" "sr_mod" ];
    boot.initrd.kernelModules = [ ];
    boot.kernelModules = [ ];
    boot.extraModulePackages = [ ];

    fileSystems."/" =
        { device = "/dev/disk/by-uuid/eb23e0f3-fbaa-4730-9d25-1c01fed7f619";
        fsType = "ext4";
        };

    fileSystems."/boot" =
        { device = "/dev/disk/by-uuid/531A-3A1D";
        fsType = "vfat";
        options = [ "fmask=0077" "dmask=0077" ];
        };

    swapDevices =
        [ { device = "/dev/disk/by-uuid/725ca9ed-14f2-497a-a120-ae93c32760f0"; }
        ];

    nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
    virtualisation.virtualbox.guest.enable = true;
  };
}

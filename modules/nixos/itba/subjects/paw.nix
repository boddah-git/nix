{ inputs, config, lib, settings, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    jetbrains.idea-ultimate
  ];

  services.postgresql = {
    enable = true;
    package = pkgs.postgresql_15;

    ensureDatabases = [ "paw-2025b-03" ];
    ensureUsers = [
      {
        name = "paw-2025b-03";
      }
    ];

    enableTCPIP = true;
    authentication = pkgs.lib.mkOverride 10 ''
      #type   database        DBuser          auth-method
      local   all             all             trust
      local   paw-2025b-03    paw-2025b-03    trust
      host    paw-2025b-03    paw-2025b-03    127.0.0.1/32     trust
      host    paw-2025b-03    paw-2025b-03    ::1/128          trust
    '';
 
  };


}
{ inputs, config, lib, settings, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    jetbrains.idea-ultimate
  ];

  services.postgresql = {
    enable = true;
    package = pkgs.postgresql_15;

    ensureDatabases = [ "paw" ];
    ensureUsers = [
      {
        name = "root";
      }
    ];

    enableTCPIP = true;
    authentication = pkgs.lib.mkOverride 10 ''
      #type database  DBuser  auth-method
      local all       all     trust
      local   paw     root    trust
      host    paw     root    127.0.0.1/32     trust
      host    paw     root    ::1/128          trust
    '';
 
  };


}
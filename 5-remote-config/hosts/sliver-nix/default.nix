# hosts/sliver-nix/default.nix

{ config, pkgs, lib, name, ... }:

{
  imports = [
    # as well as a package specific to this node
    ./sliver.nix
  ];

  time.timeZone = "America/New York";

  # this will set the hostname to "nixie"
  networking.hostName = name;

  deployment = {
    targetHost = "{{ SERVER IP }}";
    targetPort = 22;
    targetUser = "ubuntu";
    buildOnTarget = true;
  };
  boot.isContainer = true;
  time.timeZone = "America/New York";
  };
}

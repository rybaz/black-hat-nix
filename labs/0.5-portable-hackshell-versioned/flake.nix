{
  description = "Build Shell with any dependency of the project";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: 
  let
    # pkgs = nixpkgs.legacyPackages."aarch64-darwin";
    pkgs = import (builtins.fetchTarball {
      url = "https://github.com/NixOS/nixpkgs/archive/5c1ffb7a9fc96f2d64ed3523c2bdd379bdb7b471.tar.gz";
    }) {};

    customNuclei = pkgs.nuclei;
  in
  {
    # devShells."x86_64-linux".default = 
    devShells."aarch64-darwin".default = 
      import ./shell.nix {inherit pkgs; };
  };
}

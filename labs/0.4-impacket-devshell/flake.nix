{
  description = "A basic flake file for Impacket";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: 
  let
    # uncomment the one that matches your architecture and OS
    pkgs = nixpkgs.legacyPackages."aarch64-darwin";
    # pkgs = nixpkgs.legacyPackages."aarch64-linux";
    # pkgs = nixpkgs.legacyPackages."x86_64-darwin";
    # pkgs = nixpkgs.legacyPackages."x86_64-linux";
  in
  {
    # devShells."x86_64-linux".default = 
    devShells."aarch64-darwin".default = 
      import ./shell.nix {inherit pkgs; };
  };
}

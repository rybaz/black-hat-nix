{
  description = "Build Shell with any dependency of the project";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: 
  let
    pkgs = nixpkgs.legacyPackages."aarch64-darwin";
  in
  {
    # devShells."x86_64-linux".default = 
    devShells."aarch64-darwin".default = 
      import ./shell.nix {inherit pkgs; };
  };
}

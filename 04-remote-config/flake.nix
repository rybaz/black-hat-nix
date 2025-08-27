{
  description = "Flake for colmena Sliver deployment";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { nixpkgs, ... }: {
    let
      # x86 package set for Linux VPS
      pkgsLinux = import nixpkgs { system = "x86_64-linux"; };
      # macos package set
      pkgsDarwin = import nixpkgs { system = "aarch64-darwin"; };
    in 
    {
      # nix develop env for macOS
      devShells."x86_64-darwin".default = pkgsDarwin.mkShell {
        buildInputs = with pkgsDarwin; [
          colmena
        ];
      };

      colmena = {
        meta = {
          # nixpkgs for all nodes (all Linux) by default
          nixpkgs = pkgsLinux;
        };

        # example server config
        sliver-nix = import ./hosts/sliver-nix;
      };
    };
  };
}

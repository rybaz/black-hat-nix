{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }:
  let
    pkgs = nixpkgs.legacyPackages."aarch64-darwin";
  in
  {
    devShells."aarch64-darwin".default = pkgs.mkShell {
      packages = with pkgs; [ 
        # python
        pkgs.python312
        # python modules
        pkgs.python312Packages.impacket
        pkgs.python312Packages.setuptools
        pkgs.python312Packages.six
        pkgs.python312Packages.charset-normalizer
        pkgs.python312Packages.pyasn1
        pkgs.python312Packages.pyasn1-modules
        pkgs.python312Packages.pycryptodomex
        pkgs.python312Packages.pyopenssl
        pkgs.python312Packages.ldap3
        pkgs.python312Packages.ldapdomaindump
        pkgs.python312Packages.flask
        # pkgs.python312Packages.pyreadline3
	    ];
    };
  };
}

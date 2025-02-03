{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {

  packages = [ 
    # python
   	pkgs.python3
    # python modules
	  pkgs.python312Packages.colorama
	  pkgs.python312Packages.requests
	  pkgs.python312Packages.beautifulsoup4
	];

  shellHook = ''
   	printf "===================================================================\n"
   	printf "This is a devshell for Python 3.12 with the following dependencies:\n"
   	printf " - beautifulsoup4\n"
	  printf " - colorama\n"
	  printf " - requests\n"
    printf "===================================================================\n"
	'';
}


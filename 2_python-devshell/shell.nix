{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {

  packages = [ 
    pkgs.python312
	];

  shellHook = ''
  	printf "===============================================================\n"
   	printf "This is a devshell for Python 3.12.\n"
   	printf "You can now run Python 3!\n"
   	printf "===============================================================\n"
	'';
}


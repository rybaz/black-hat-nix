{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {

  packages = [ 
    pkgs.python312
	];

  shellHook = ''
  	printf "\n===============================================================\n"
   	printf "This is a devshell for Python 3.13.\n"
   	printf "You can now run `python3`!\n"
   	printf "===============================================================\n"
	'';
}


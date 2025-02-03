 { pkgs ? import <nixpkgs> {} }:

 pkgs.mkShell {

    packages = [ 
	    # python
    	pkgs.python312
	    # python modules
	    pkgs.python312Packages.beautifulsoup4
	    pkgs.python312Packages.colorama
	    pkgs.python312Packages.requests
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


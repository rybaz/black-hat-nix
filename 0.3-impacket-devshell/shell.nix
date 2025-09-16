{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {

  packages = [ 
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

  shellHook = ''
   	printf "===================================================================\n"
    printf "This is a devshell for Impacket using Python 3.12 w/ dependendies: \n"
    printf " - charset_normalizer\n"
    printf " - flask"
    printf " - ldap3"
    printf " - ldapdomaindump"
    printf " - pyOpenSSL"
    printf " - pyasn1"
    printf " - pyasn1_modules\n"
    printf " - pycryptodomex\n"
    printf " - pyreadline3;sys_platform == 'win32'\n"
    printf " - setuptools\n"
    printf " - six\n"
    printf "===================================================================\n"
	'';

}

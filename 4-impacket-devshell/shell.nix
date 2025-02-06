{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {

  shellHook = ''
   	printf "===================================================================\n"
    printf "This is a devshell for Impacket using Python 3.12 w/ dependendies: \n"
    printf " - setuptools\n"
    printf " - six\n"
    printf " - charset_normalizer\n"
    printf " - pyasn1>=0.2.3\n"
    printf " - pyasn1_modules\n"
    printf " - pycryptodomex\n"
    printf " - pyOpenSSL==24.0.0\n"
    printf " - ldap3>=2.5,!=2.5.2,!=2.5.0,!=2.6\n"
    printf " - ldapdomaindump>=0.9.0\n"
    printf " - flask>=1.0\n"
    printf " - pyreadline3;sys_platform == 'win32'\n"
    printf "===================================================================\n"
	'';
}


{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {

    nativeBuildInputs = with pkgs.buildPackages; [
      # general
      nmap

      # disvovery
      dnsx
      httpx
      ipinfo
      naabu
      subfinder

      # vulns
      nuclei
    ];

  shellHook = ''
   	printf "================================================================\n"
    printf "This is a portable hacking shell with the following tools: \n"
    printf " - nmap\n"
    printf " - dnsx\n"
    printf " - httpx\n"
    printf " - ipinfo\n"
    printf " - naabu\n"
    printf " - subfinder\n"
    printf " - nuclei\n"
    printf "================================================================\n"
	'';
}

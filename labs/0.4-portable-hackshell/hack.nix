 { pkgs ? import <nixpkgs> {} }:

  pkgs.mkShell {

    nativeBuildInputs = with pkgs.buildPackages; [
      # core
      bat
      coreutils
      curl
      fd
      fzf
      git
      jq
      ripgrep
      tree
      wget

      # general
      kubectl
      mitmproxy
      nmap

      # discovery
      dnsx
      httpx
      ipinfo
      naabu
      subfinder

      # vulns
      nuclei
      metasploit
      sqlmap

      # screenshot flyovers
      gowitness
      #google-chrome

      # active directory
      mitm6
      coercer
      responder
      bloodhound-py
    ];
}

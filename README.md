# Nix Labs
This is the companion repository for my talk, "Solving Dumb Hacker Problems with
Nix".

Each directory is a contained exercise with its own `README.md` that you should
reference for how to begin.

## Labs
- 00: Package Installation
- 01: Nix Shells On The Fly
- 02: A Simple Python Devshell
- 03: Devshells feat. Impacket

## Prerequisite: Install Nix
Curl into `/bin/sh` like all good security people do [ask Determinate, not me](https://determinate.systems/nix-installer/):
```sh
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix \ 
| sh -s -- install --determinate
```
### How to Uninstall
Accidentally put this on your work computer and pissed of IT? 
```sh
/nix/nix-installer uninstall
```


<p align="center">
  <img src="./src/logo-lol.png" alt="Black Hat Nix logo">
</p>

# Black Hat Nix
This is the companion repository for my talk, "Solving Dumb Hacker Problems with
Nix".

Each directory is a contained exercise with its own `README.md` that you should
reference for how to begin.

## Labs
- 0.0: Package Installation
- 0.1: Nix Shells On The Fly
- 0.2: A Simple Python Devshell
- 0.3: Devshells feat. Impacket
- 0.4: Portable Hacking Shells

## Prerequisite: Install Nix
Curl into `/bin/sh` like all good security people do ([ask Determinate, not me](https://determinate.systems/nix-installer/)):
```sh
curl --proto '=https' --tlsv1.2 -sSf -L \ 
    https://install.determinate.systems/nix \ 
    | sh -s -- install --determinate
```
### How to Uninstall
Accidentally put this on your work computer and pissed off IT? 
```sh
/nix/nix-installer uninstall
```


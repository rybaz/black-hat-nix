# Lab 03: Devshells feat. Impacket
You *could* activate the devshell the same was as with the previous lab:
```sh
nix-shell shell.nix
```
Notice that the dependencies for impacket all load in due to their inclusion in 
`shell.nix`.

The declarations in `flake.nix` don't currently work, otherwise you'd be able to run the following and enter a development environment with all package versions pinned in `flake.lock`:
```sh
nix develop
```

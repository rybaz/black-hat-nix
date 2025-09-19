# Lab 00: Package Installation
It is entirely possible to use Nix (and nixpkgs, the package repository) as a 
drop-in replacement for `apt`, `yum`, `pacman`, etc.

But this is a primitive and hindered way of using Nix, as I hope you will
understand as you go through the labs that follow. 

That said, if you wanted to install Metasploit, a package not commonly found on
mainstream Linux distros, you could do that by typing:
```bash
nix-env -iA metasploit
```
You can also uninstall it with:
```bash
nix-env -e metasploit
```
>Note: The best place for finding packages you can use is the official
>[NixOS Package Search](https://search.nixos.org/packages).

But there are better, cooler ways of getting the tools you want.

Move on to *Lab 02* when you're ready.

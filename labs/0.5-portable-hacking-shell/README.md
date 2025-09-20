# Lab 0.5: Portable Hacking Shell
Sometimes you just need a file you can lug around that installs the tools you
want or need. In this case, we can do the exact same thing we did in the 
previous lab and:
```sh
nix-shell shell.nix
```
Unlike the previous lab, there is no `flake.nix` meaning this is just a 
devshell like `Lab 0.2`. That said, you can always extend this with a flake
file if, for example, you wanted specific versions of any of the tools 
specified in `shell.nix`. We will cover this next in `Lab 0.5`.

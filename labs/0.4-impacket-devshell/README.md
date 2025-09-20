# Lab 0.4: Devshells feat. Impacket
In this exercise, if you've ever used Impacket you will find the folder structure
quite familiar. However, I have added two files to make Impacket "Nix-ish", and 
I will cover them each separately:

- shell.nix
- flake.nix

## A Simple Devshell
You *could* activate the devshell the same was as with the previous lab:
```sh
nix-shell shell.nix
```
Notice that the dependencies for impacket all load in due to their inclusion in 
`shell.nix`. If you never wanted to take things further than this, you could 
stop right here, but there's even more benefit to be reaped further on.

## A Brief Intro to Flakes
You will notice that there is an additional file, `flake.nix`, in the folder
alongside `shell.nix`, which we're already familiar with. This file is the base
for a feature of Nix called "Flakes", which you can think of as a way of
specifying *how* our devshell should be built. 

With just `shell.nix`, we are pulling the latest versions of the packages like
`python312Packages.flask`. This is usually fine, but many projects require  
specific versions of dependencies. If `flask` is updated in nixpkgs, but it
doesn't work with the current version of `impacket`, you might run into trouble.

This is where flakes come in. Having a `flake.nix` file that *inherits* our 
`shell.nix` file as a built input allows us to specify some key components:

1. Which channel (or repository version) our packages come from:
```nix
    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    };
```
2. Which architecture we want the packages to work with:
```nix
    pkgs = nixpkgs.legacyPackages."aarch64-darwin";
```

3. Where to get the actual package list:
```nix
    devShells."aarch64-darwin".default = 
        import ./shell.nix {inherit pkgs; };
```
This will ensure that, in the event that we start our devshell, we will always
be pulling the latest versions from the `unstable` channel for an M3 Mac.

Having created a valid flake for our devshell, we can now start the devshell
with all the benefits of a flake with:
```sh
nix develop
```

We will cover how to specify versions of dependencies in our devshells in a
later exercise.

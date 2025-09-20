# Lab 0.0: Nix Introduction and Installation
## Introduction
These lab exercises will take you through some real-world applications of Nix
for offensive operators such as myself. These are certainly not the only ways
to use Nix, they are simply what I have found the most use of and happen to 
be easily related to core concepts within the Nix ecosystem.

For the sake of continuity, I will be using a Debian 13 installation throughout
this repository until otherwise stated. Some exercises will draw upon the power
of NixOS, but unless the `README.md` says that's a requirement, all exercises
will be possible on Debian 13.

You are welcome to attempt these exercises on any other distro if you'd like,
but I cannot promise they will all work. Additionally, because Nix and NixOS
rely heavily on SystemD, distros running other init systems like OpenRC or SysV
will not work. If you don't know what init system you're running, just spin
up a Debian 13 VM and don't worry about it.

## How to Install Nix
To install Nix, we are going to get it straight from the source. Follow the 
multi-user installation instructions for Linux on 
[this page](https://nixos.org/download/#nix-install-linux).

## How to Uninstall Nix
Uninstalling Nix is fairly simple in case you want to start over, but depends
on the host OS you're using. See the instructions for your OS on 
[this page](https://nix.dev/manual/nix/2.21/installation/uninstall).

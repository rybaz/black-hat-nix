# Lab 0.3: A Simple Python Devshell
Python is one of my favorite languages to write and one of my most hated to 
actually use. I only have worse nightmares about using someone else's code when
it's Perl.

The `shell.nix` file in this exercise contains on package, `python313`, which
is the nixpkgs name for Python 3.12. If you're like me and prefer to keep the 
binaries for languages as isolated as possible, you can open a shell with only
the default Python 3.12 package installed:

```
  packages = [ 
    pkgs.python312
  ];

```

As long as you have Nix installed on your host system, you'll be able to run
the following and invoke the Python REPL as intended:

```bash
nix-shell shell.nix
```

Simply `exit` as usual when you're finished, and move on to the next exercise
to see how we can manage someone else's Python-based tooling and its
dependencies without having to use something like Pip or Poetry.

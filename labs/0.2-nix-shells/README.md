# Lab 0.2: Nix Shells
With Nix, we don't have to install a package just to try it out.

If we want to try out the very fun program known as `cowsay` without adding
it to the system permanently, we can do the following:

```sh
nix-shell -p cowsay
```

What is known as a "nix shell" will open, containing nothing but the `cowsay`
package for you to play with. Once you're finished making cow art, you can 
simplt `exit` to return to your original shell session where `cowsay` will 
no longer be available.

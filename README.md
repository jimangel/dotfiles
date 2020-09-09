# dotfiles
My dotfiles

If you plan to fork this, know that there's a static email set in `.gitconfig` and the Helm version is static in `bin/updateorinstall`. Lastly, this is currently only tested on Ubuntu (20.04).

```
# Sets up all the bin and dot stuff
make
```

Install binaries and stuff

```
# Look at `bin/updateorinstall` to see what that is.
sudo updateorinstall
```

### Optional junk

```
# set up vscode
make vscode

# install gimp
sudo snap install gimp

# create SSH key if doesn't exist (defaults to $HOME/.ssh/id_rsa)
ssh-key
```

# Dotfiles

Configuration files for:

- Git
- Tmux
- Fish
- Vim

## Local setup

First, clone this repo to your machine.

```bash
git clone https://github.com/ckateraas/dotfiles.git
```

Then run `install.sh`, which helps you install and setup configuration files for those packages.

```bash
cd dotfiles
./install.sh
```

Congrats, you have now completed the setup! On your next login, your shell will be Tmux running in Fish.

## Remote server setup

The `server-install.sh` script installs a different configuration for Tmux and for Fish. Otherwise the two scripts are identical.

- The colors for Tmux are changed to help make it obvious you are on a remote system.
- The Fish config has fewer aliases and does not change the keyboard layout with `setxkbmap`.

Clone the repo, as with the local setup, but run `server-install.sh` instead of `install.sh`.
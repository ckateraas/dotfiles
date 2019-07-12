# Dotfiles

Setup for how I like to use Ubuntu. Made to help you quickly configure and get started with new machines.
Sets up a keyboard focused desktop environment using Snap and Docker.

## Installation of dotfiles

This section will walk you through how to install and setup the basic version.

### Fetching the repo

Clone this repo to get all the config files and helper scripts.

```bash
mkdir ~/git; cd ~/git
git clone git@github.com:ckateraas/dotfiles.git
```

### Base install

To install all the dependencies you can run `./install-deps-ubuntu.sh`. This will install all the
needed packages for this setup.
Some of the packages may already be installed on your new distro, but we're
installing all of them, just to be sure we're not missing any.

```
./install-deps-ubuntu.sh
```

### Linking the config files

Now, once the needed packages are installed, you can run `setup.sh`.

```bash
~/git/dotfiles/setup.sh
```

Then you have completed the setup for the dotfiles!

## Installing non-PPA software

If you have run `./install-deps-ubuntu.sh`, you should have Docker installed locally. Using Docker, we can build and install software not in the default PPAs or a newer version than what's in the PPA.

For `fzf`, `i3-gaps`, `st`, and `yabar`, you can `cd` into the directory and run `./install.sh`.

This will build a Docker image with the dependencies needed, build a `.deb` file, copy it from the Docker container and install it on your host system.

## Optional packages

Here's a list of useful, optional packages.

### Docker Compose

A nice addition to Docker is Docker Compose. Install with the following:

```bash
sudo curl -L https://github.com/docker/compose/releases/download/{version}/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```

Replace `{version}` with the latest and greatest version you want. Check out [available release on their Github page](https://github.com/docker/compose/releases/) for all available versions.

### Node & NPM

Install `node` with `snap` like this:

```bash
snap install node --channel=10/stable --classic
```

This will install version 10 on your machine.
Visit [Snapcraft](http://snapcraft.io/node) to see which versions/channels are available.

### Atom plugins

Vanilla Atom, which is installed with `./setup.sh`, gets even better with some nice extensions.

```bash
apm install Zen atom-clock atom-import-js atom-jest-snippets autocomplete-modules busy-signal dracula-syntax file-icons git-blame git-time-machine intentions linter linter-ui-default multi-cursor nord-atom-syntax nord-atom-ui pigments prettier-atom react zentabs
```

## Custom fonts

[Nerd Fonts](https://github.com/ryanoasis/nerd-fonts/releases) has several fonts which have all
been patched with extra glyphs and icons. These fonts will allow you to add more icons to your
programs, such as the HUD for `tmux` or the different panels for `yabar`.

### Installing a custom font

There are good instructions for how you can install a font from Nerd Fonts in their own repo.
Below is one of the ways you can do it, taken from their own guides and install script.

You first have to download a zip archive of the font you want to `~/Downloads/font.zip`.

```bash
mkdir /usr/local/share/fonts/NerdFonts
cd /usr/local/share/fonts/NerdFonts
unzip ~/Downloads/font.zip .
fc-cache -fv .
```

To verify that the font you chose was installed, you can run `fc-match "{font}"`. If the font is
listed, then the new font is available for your system. This will also show you the name of the
different types of your font, which you will need when you want your terminal, IDE, or other
program to use the new font.

### Exploring a font

If you want to see the details of the font you installed, use a program like
`gucharmap` to browse all available glyphs, characters, and icons in the font.

## Other nifty programs

- [Arduino IDE](https://www.arduino.cc/en/guide/linux)
- [pCloud](https://blog.pcloud.com/pcloud-drive-for-linux/)
- Mail Spring Email client via `snap install mailspring`
- VLC via `snap install vlc`
- YubiKey via [their downloads page](https://www.yubico.com/products/services-software/download/)
- ElectronPlayer via `snap install electronplayer`

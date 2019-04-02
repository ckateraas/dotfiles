# Dotfiles

Setup for how I like to use Ubuntu. Made to help you quickly configure and get started with new machines.
Sets up a keyboard focused desktop environment.

## Installation of dotfiles

This section will walk you through how to install and setup the basic version.

### Required dependencies

First, you need to install all the dependencies.
Some of the tools may already be installed on your new distro, but we're
installing all of them just to be sure we're not missing any.

```bash
apt install -y git vim fish i3-wm feh i3lock rofi yabar scrot pavucontrol
```

This can also be installed using `./install-deps-ubuntu.sh`.

### Fetching the repo

Once all dependencies are installed, then clone this repo to get all the config files.

```bash
mkdir ~/git; cd ~/git; git clone git@github.com:ckateraas/dotfiles.git
```

### Linking the config files

After the repo has been cloned into `~/git/dotfiles`, you can run `setup.sh`.

```bash
~/git/dotfiles/setup.sh
```

Then you have completed the setup for the dotfiles!

## Installation of programs

Here's a list of what programs I use frequently and how to install them.

### Snap

If your distro doesn't already have `snapd` installed, you can probably install it with your distro's package manager,
such as `apt`.

```bash
apt install -y snapd
echo "export PATH=$PATH:/snap/bin" >> /etc/bash.bashrc
```

The last line adds `/snap/bin` to `$PATH`, so you can execute the programs you install with `snap`.

### Docker

Use `snap` to easily get Docker on your machine. If you don't want to use
`snap`, you can also add Docker's own PPA or install it as a  `.deb` from their website.

```bash
snap install docker
```

### Docker Compose

A nice addition to Docker is Docker Compose. Install with the following:

```bash
sudo curl -L https://github.com/docker/compose/releases/download/{version}/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```

Replace `{version}` with the latest and greatest version you want. Check out [available release on their Github page](https://github.com/docker/compose/releases/)

### Node & NPM

Install `node` with `snap` like this:

```bash
snap install node --channel=10/stable --classic
```

This will install version 10 on your machine.
Visit [Snapcraft](http://snapcraft.io/node) to see which versions/channels are available.

### Atom IDE

Install `atom` with `snap` like this:

```bash
snap install atom --classic
```

This will install the latest version of Atom on your machine.
Visit [Snapcraft](http://snapcraft.io/atom) to see which versions/channels are
available.

#### Atom plugins

Vanilla Atom gets even better with some nice extensions :)

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

As a hint, if you want to see the details of the font you installed, use a program like
`gucharmap` to browse all available glyphs, characters, and icons in the font.

## Other nifty programs

- [Arduino IDE](https://www.arduino.cc/en/guide/linux)
- [pCloud](https://blog.pcloud.com/pcloud-drive-for-linux/)
- Signal Desktop client via `apt install -y signal-desktop`
- Mail Spring Email client via `snap install mailspring`
- VLC via `snap install vlc`
- `jq` via `snap install jq`
- YubiKey via [their downloads page](https://www.yubico.com/products/services-software/download/)

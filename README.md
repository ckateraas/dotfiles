# Dotfiles

Setup for how I like to use Ubuntu. Made to help you quickly configure and get started with new machines.
Sets up a keyboard focused desktop environment, mainly using Snap and Docker to run applications.

## Installing the dotfiles

First, clone this repo to your machine.

```bash
mkdir ~/git; cd ~/git
git clone git@github.com:ckateraas/dotfiles.git
```

Then run `install.sh`, which helps you install the needed packages and setup symlinks for configuration files.

```bash
cd dotfiles
./install.sh
```

Congrats, you have now completed the setup!

## Installing Docker

Docker is available from Docker's own PPA. To get it working from your machine, you need to add their GPG key, then add the PPA, before finally installing Docker.

```bash
apt install curl
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
```

The next step is to verify you have got the correct key in the previous step.

```bash
$ apt-key fingerprint 0EBFCD88
    
pub   rsa4096 2017-02-22 [SCEA]
      9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88
uid           [ unknown] Docker Release (CE deb) <docker@docker.com>
sub   rsa4096 2017-02-22 [S]
```

If your key matches, continue on and add the PPA.

```bash
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
```

Replace `bionice` with what ever is the name of your Ubuntu distribution. If you do not know, run `lsb_release -cs`.

```bash
apt-get install docker-ce docker-ce-cli containerd.io
```

## Installing Docker Compose

A nice addition to Docker is Docker Compose. Install with the following:

```bash
sudo curl -L https://github.com/docker/compose/releases/download/{version}/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```

Replace `{version}` with the version you want. Check out [available release on their Github page](https://github.com/docker/compose/releases/) for all available versions.

## Installing fonts

[Nerd Fonts](https://github.com/ryanoasis/nerd-fonts/releases) has several fonts which have all
been patched with extra glyphs and icons. These fonts will allow you to add more icons to your
programs, such as the HUD for `tmux` or the different panels for `polybar`.

### Installing a custom font

There are good instructions for how you can install a font from Nerd Fonts in their own repo.
Below is one of the ways you can do it.

```bash
mkdir /usr/local/share/fonts/NerdFonts
cd /usr/local/share/fonts/NerdFonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/{version}/Hack.zip
unzip Hack.zip
fc-cache -fv .
```

> The steps are copied from their installation guides and _all_ credit go to Nerd Fonts.

To verify that the font you chose was installed, you can run `fc-match "Hack Nerd Font"`. If the font is
listed, then the new font is available for your system. This will also list the names of the
different types of your font, such as _mono_ or _regular_.

If you want to see the details of a font you have installed, you can use `gucharmap` to browse any and all glyphs, characters, and icons in the font.

## Other nifty programs

- [Arduino IDE](https://www.arduino.cc/en/guide/linux)
- [pCloud](https://blog.pcloud.com/pcloud-drive-for-linux/)
- Mail Spring Email client - `snap install mailspring`
- VLC - `snap install vlc`
- YubiKey - [download from their downloads page](https://www.yubico.com/products/services-software/download/)
- ElectronPlayer - `snap install electronplayer`

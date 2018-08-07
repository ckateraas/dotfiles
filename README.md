# Dotfiles

Get up and going fast with your new machine!

```bash
apt install -y fish i3-wm feh i3lock rofi yabar ranger

ln -s gitconfig ~/.gitconfig
ln -s tmux.conf ~/.tmux.conf
ln -s vimrc ~/.vimrc
mkdir ~/.config/fish
ln -s config.fish ~/.config/fish/config.fish

mkdir ~/.config/yabar
ln -s yabar.config ~/.config/yabar/yabar.fish

chsh yourname -s /usr/bin/fish
```

## Docker

Two ways of installing Docker.

- Follow instructions on Docker's install page: https://docs.docker.com/install/linux/docker-ce/debian/#set-up-the-repository
- Get `.deb` from https://download.docker.com/linux/ubuntu/dists/artful/pool/stable/amd64/
  and use `dpkg` to install it.

```
$ curl https://download.docker.com/linux/ubuntu/dists/artful/pool/stable/amd64/docker-ce_18.03.1~ce-0~ubuntu_amd64.deb -O docker.deb
$ dpkg -i docker.deb
```

## Docker Compose

A nice addition to Docker is Docker Compose. Install with the following:

```bash
sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```

## NodeJS and NPM

Download the `.deb` file from NodeJS' website and install by extracting the File
into `/usr/local`.

```sh
$ curl https://nodejs.org/dist/latest/node-v10.5.0-linux-x64.tar.gz -O node.tar.gz
$ tar -xf node.tar.gz --strip-components=1 -C /usr/local
```

## Atom IDE

1.  Get `.deb` from https://atom.io/
2.  Get needed `.so` for atom with `apt install libgconf-2-4`
3.  `dpkg -i atom.deb`

A few nice packages to make Atom even nicer to use.

```bash
apm install Zen  atom-clock  atom-import-js  atom-jest-snippets  autocomplete-modules  busy-signal  dracula-syntax  file-icons  git-blame  git-time-machine  intentions  linter  linter-ui-default multi-cursor  nord-atom-syntax  nord-atom-ui  pigments  prettier-atom  react  zentabs
```

## Hack font

1.  Get font from Nerd Fonts repo: https://github.com/ryanoasis/nerd-fonts/releases
2.  Unzip into `/usr/share/fonts/truetype/`.
3.  Run `fc-cache -fv` to register new font. Check output for something similar to `Hack Nerd Font: 4 fonts`.
4.  Run `fc-match "Hack Nerd Font"` to see if new font has been registered correctly.
5.  To debug, run `fc-list | grep Hack` to see what name the font is registered with.
6.  To see which characters are in the fonts, use `gucharmap`.

## Nifty programs

- [Arduino IDE](https://www.arduino.cc/en/guide/linux)
- [pCloud](https://blog.pcloud.com/pcloud-drive-for-linux/)

# Dotfiles
```bash
ln -s gitconfig ~/.gitconfig
ln -s tmux.conf ~/.tmux.conf
ln -s config.fish ~/.config/fish/config.fish
ln -s yabar.config ~/.config/yabar/yabar.fish
ln -s vimrc ~/.vimrc
```

## Fish
Install Fish with the following command:

```bash
apt install fish
```

Set Fish as your default shell with:

```
$ chsh yourname -s /usr/bin/fish
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
Editor of choice.

1. Get `.deb` from https://atom.io/
2. Get needed `.so` for atom with `apt install libgconf-2-4`
3. `dpkg -i atom.deb`

A few nice packages to make Atom even nicer to use.

 ```bash
apm install dracula-syntax intentions multi-cursor atom-clock file-icons language-javascript-jsx prettier-atom atom-import-js git-blame linter zentabs busy-signal git-time-machine linter-ui-default
```

## i3
Tiling window manager.

```bash
apt install i3-wm
```

Install all the needed programs used in this i3 config:

```bash
apt install -y feh i3lock rofi yabar
```

## rofi
dmenu replacement. Used for easier launching apps with i3.

```bash
apt install -y rofi
```

## Ranger
File manager for your terminal.

```bash
apt install -y ranger
```

## Hack font
1. Get font from Nerd Fonts repo: https://github.com/ryanoasis/nerd-fonts/releases
2. Unzip into `/usr/share/fonts/`.
3. Run `fc-cache -fv` to register new font. Check output for something similar to `Hack Nerd Font: 4 fonts`.
4. Run `fc-match Hack Nerd Font` to see if new font has been registered correctly.
5. To debug, run `fc-list | grep Hack` to see what name the font is registered with.
6. To see which characters are in the fonts, use `gucharmap`.

## Nifty programs
- [Arduino IDE](https://www.arduino.cc/en/guide/linux)
- [pCloud](https://blog.pcloud.com/pcloud-drive-for-linux/)

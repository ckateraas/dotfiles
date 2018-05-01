# Dotfiles
```bash
ln -s gitconfig ~/.gitconfig
ln -s tmux.conf ~/.tmux.conf
ln -s config.fish ~/.config/fish/config.fish
ln -s vimrc ~/.vimrc
```

## [Fish](https://github.com/fish-shell/fish-shell)
Friendly interactive shell. Install with:

```bash
apt install fish
```

### Default shell
Set Fish as your default shell with:

```
chsh yourname -s /usr/bin/fish
```

## [Docker](https://www.docker.com/)
Option 1: Get `.deb` from https://download.docker.com/linux/ubuntu/dists/artful/pool/stable/
and use `dpkg -i` to install it.

Option 2: Follow instructions on Docker's install page: https://docs.docker.com/install/linux/docker-ce/debian/#set-up-the-repository

### Docker Compose
A nice addition to Docker is Docker Compose. Install with the following:

```bash
sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```

## [pass](https://www.passwordstore.org/)
Password manager. Intall with:

```bash
apt instal pass
```

## [Atom IDE](http://atom.io/)
Nice editor by Github!

1. Get `.deb` from https://atom.io/
2. (Get needed .so for atom with `apt install libgconf-2-4`)
3. `dpkg -i atom.deb`
4. Install neat packages (below)

### List of neat packages for Atom
A few nice packages to make Atom even nicer to use.

 ```bash
apm install dracula-syntax intentions multi-cursor atom-clock file-icons language-javascript-jsx prettier-atom atom-import-js git-blame linter zentabs busy-signal git-time-machine linter-ui-default
```

## [i3](https://github.com/i3/i3)
Tiling window manager. Install with:
```bash
apt install i3-wm
```

### Extra programs
Install needed programs for this i3 config:

```bash
apt install -y feh i3lock rofi
```

## [rofi](https://github.com/DaveDavenport/rofi)
dmenu replacement. Used for easier launching apps with i3. Install with:

```bash
apt install -y rofi
```

### Setup with i3
Add to `/etc/i3/config` that `rofi` is run instead of the standard `dmenu` with:

```bash
bindsym $mod+d exec rofi -show drun
```

To configure the theme for Rofi, use `rofi-theme-selector`.

## [Ranger](https://github.com/ranger/ranger)
File manager for your terminal.
Install with:

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

## [Polybar](https://github.com/jaagr/polybar)
Add a status bar to your i3 setup!

1. Download repo for Polybar from Github: https://github.com/jaagr/polybar/wiki

2. Install dependencies (for Ubuntu 17.10)
```bash
apt install -y cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto  cmake clang libiw-dev libasound2-dev cmake
```

3. Build using `build.sh` in `polybar`.

4. `cp polybarConfig ~/.config/polybar/config`.

5. Add `~/.config/polybar/launch.sh` with the following content.

```bash
#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bars
polybar example &
```

6. Add `exec_always --no-startup-id $HOME/.config/polybar/launch.sh` to i3 config.

## Clean up Ubuntu
Run this to remove stuff we never use:

```
apt-get remove account-plugin-facebook account-plugin-flickr account-plugin-jabber account-plugin-salut account-plugin-twitter account-plugin-windows-live account-plugin-yahoo aisleriot brltty colord deja-dup  duplicity empathy empathy-common evolution-data-server-online-accounts example-content firefox gnome-accessibility-themes gnome-contacts gnome-mahjongg gnome-mines gnome-orca gnome-screensaver gnome-sudoku gnome-video-effects gnomine landscape-common libreoffice-avmedia-backend-gstreamer libreoffice-base-core libreoffice-calc libreoffice-common libreoffice-core libreoffice-draw libreoffice-gnome libreoffice-gtk libreoffice-impress libreoffice-math libreoffice-ogltrans libreoffice-pdfimport  libreoffice-style-galaxy libreoffice-style-human libreoffice-writer libsane libsane-common mcp-account-manager-uoa python3-uno rhythmbox rhythmbox-plugins rhythmbox-plugin-zeitgeist sane-utils shotwell shotwell-common telepathy-gabble telepathy-haze telepathy-idle telepathy-indicator telepathy-logger telepathy-mission-control-5 telepathy-salut  unity-scope-chromiumbookmarks  unity-scope-colourlovers unity-scope-devhelp unity-scope-firefoxbookmarks    unity-scope-manpages unity-scope-musicstores  unity-scope-openclipart unity-scope-texdoc unity-scope-tomboy unity-scope-video-remote unity-scope-virtualbox unity-scope-yelp unity-scope-zotero whoopsie seahorse suckless-tools totem totem-common totem-plugins* thunderbird thunderbird-gnome-support  transmission transmission-common transmission-gtk rhythmbox-data cheese-common
```

> Use minimal install to skip this step

## Nifty programs
- [Arduino IDE](https://www.arduino.cc/en/guide/linux)
- [pCloud](https://blog.pcloud.com/pcloud-drive-for-linux/)

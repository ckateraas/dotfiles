# Extra config

For some system, you need some more config to get it working.

## Installing Docker

Docker is available from Docker's own PPA. See their [documentation for how to install it](https://docs.docker.com/engine/install/ubuntu/).

## Installing Docker Compose

A nice addition to Docker is Docker Compose. Install by following their [documentation for how to install it](https://docs.docker.com/compose/install/).

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

## Legacy config

There are also legacy config here, for some programs that I no longer use:

- Dunst
- sxhkd
- i3
- Polybar

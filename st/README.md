# Setting up Simple Terminal (st)

Building and using [Luke Smith's fork of st](https://github.com/LukeSmithxyz/st).

## Building st

Fetch the sources for `st` from https://github.com/lukesmithxyz/st, then copy the
`Dockerfile`, from this repo, into the `st` repo.

```bash
git clone https://github.com/LukeSmithxyz/st
cp Dockerfile st
cd st
docker build -t st-build .
docker run -v ${PWD}:/builder st-builder
```

You should then find the compiled binary `st` in the root of the repo.

### Configuration

`st` is configured by `config.h` when it is built. There is a `config.h` file in this directory, which you can
use when building `st`. Simply copy it into `st/` to replace the repo's `config.h`.

```sh
cp ../config.h .
```

## Installing st

Since we built `st` using Docker, we have to do a few manual steps to finish the
installation of `st`.

### Add binary to your path

We have to move the build `st` binary to `/usr/local/bin`.
This is to add `st` on your `$PATH`, which is also what the
`makefile` in the `st` repo does.

```bash
mkdir -p /usr/local/bin
cp -f st /usr/local/bin
chmod 755 /usr/local/bin/st
```

### Add manpage entry

We also manually have to add an entry for `st` to your local manpage.

```bash
mkdir -p /usr/local/share/man/man1
cp st /usr/local/share/man/man1/st.1
```

### Create .desktop entry

Add the `st.desktop` file to `/usr/share/applications` to add it many
application launchers. This will allow you to use launchers, such as `rofi` or `dmenu`,
to start `st`.

You can also add it to `~/.local/share/applications`, to avoid using `sudo`.

```bash
sudo cp ../st.desktop /usr/share/applications
```

## Errors

If you get a message about `__vte_prompt_command: command not found`, then
remove `/etc/profile.d/vte-2.91.sh` and restart `st`.

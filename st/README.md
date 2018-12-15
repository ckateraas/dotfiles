# Setting up Simple Terminal (st)

Building and using Luke Smith's fork of st.

## Getting started

Fetch the source from https://github.com/lukesmithxyz/st.

```bash
cp Dockerfile ../st
cd ../st
docker build -t st-builder .
docker run -v ${PWD}:/builder st-builder
```

You should then find the compiled `st` in the root of the folder,
 which you can run like `./st`.

## Errors

If you get a message about `__vte_prompt_command: command not found`, then
remove `/etc/profile.d/vte-2.91.sh` and restart `st`.

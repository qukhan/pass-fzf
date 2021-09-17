# pass-fzf
An extension for the pass password manager using fzf to find matching passwords.

Selects the best matching password. Opens up the fzf selector if there are several matches.

## Usage

```sh
pass fzf [ --clip[=line-number], -c[line-number] ] [ --qrcode[=line-number], -q[line-number] ] fuzzy-pass-name
```
The options are the same as the `show` command for pass.

## Install

**Requires: [fzf](https://github.com/junegunn/fzf).**

- Create the `.password-store/.extentions` folder and copy `fzf.bash` there.
- Set `PASSWORD_STORE_ENABLE_EXTENSIONS` to `"true".

```sh
: ${PASSWORD_STORE_DIR="~/.password-store"} # Define var if not already defined
mkdir -p "${PASSWORD_STORE_DIR}/.extensions"
cp fzf.bash "${PASSWORD_STORE_DIR}/.extensions"
export PASSWORD_STORE_ENABLE_EXTENSIONS="true" # or add to .bashrc
```

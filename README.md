# My dotfiles

Feel free to use these files whatever you want.

## Prerequisites

You need to have the following software installed on your system:

1. `envsubst` (part of `gettext`)
2. `tmux` >= 2.1
3. `git`

## Install

You can install all config files at once like this:

```bash
export GIT_USER_NAME=<your name>
export GIT_USER_EMAIL=<you email>

git clone https://github.com/rezwyi/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
for f in `find . -name install.sh`; do cd `dirname $f` && ./install.sh && cd -; done
```

Or, go to directory you need and run `install.sh`.

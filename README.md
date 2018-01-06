# My dotfiles

Feel free to use these files whatever you want.

## Install

You can install all config files at once like this:

```bash
git clone git@github.com:rezwyi/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
for f in `find . -name install.sh`; do cd `dirname $f` && ./install.sh && cd -; done
```

Or, go to directory you need and run `install.sh`.

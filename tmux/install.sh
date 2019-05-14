#!/bin/sh

set -e

mkdir -p $HOME/.tmux && cd $HOME/.tmux

if [ ! -d $HOME/.tmux/tmux-colors-solarized ]; then
  git clone --single-branch --branch updateOptionsRemovedFromTmux --quiet https://github.com/darcyparker/tmux-colors-solarized.git
fi

cd -
cp config $HOME/.tmux.conf

exit 0

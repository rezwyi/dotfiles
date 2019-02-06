#!/bin/sh

set -e

mkdir -p $HOME/.tmux && cd $HOME/.tmux
git clone https://github.com/seebi/tmux-colors-solarized.git
cd -
cp config $HOME/.tmux.conf

exit 0

#!/bin/sh

mkdir -p ~/.tmux && cd ~/.tmux
git clone https://github.com/seebi/tmux-colors-solarized.git
cd -
cp config ~/.tmux.conf

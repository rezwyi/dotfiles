#!/bin/sh

set -e

mkdir -p $HOME/.vim/autoload $HOME/.vim/bundle

curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
if [ ! -d $HOME/.vim/bundle/nerdtree ]; then
  git clone --quiet https://github.com/scrooloose/nerdtree.git $HOME/.vim/bundle/nerdtree
fi

cp -R dist/ $HOME/.vim/
cp config $HOME/.vimrc

exit 0

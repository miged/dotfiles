#!/bin/bash
RC="gitconfig tmux.conf zshrc"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

git submodule update --init --recursive -s 2> /dev/null
ln -s -T $DIR/zsh/antigen.zsh $HOME/.antigen.zsh 2> /dev/null

for file in $RC; do
  if [[ $file == '.gitconfig' && $USER != 'mige' && $USER != 'miguel' ]]; then
    echo "Not linking $file, it has my name in it! Do it yourself"
  else
    if [[ $(readlink -f $HOME/$file) != $(readlink -f $here/$file) ]]; then
      ln -i -s -T -v $DIR/$file $HOME/.$file
    fi
  fi
done

if [[ -z $(git config user.email) ]]; then
  read -p "Set up git email? (y/n) " yn
  case $yn in
    [Yy]* )
      read -p "Enter your email: " email
      git config --global user.email $email
      ;;
    *) ;;
  esac
fi

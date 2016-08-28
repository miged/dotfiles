#!/bin/bash
RC="gitconfig tmux.conf zsh zshrc vim vimrc"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

git submodule update --init --recursive
ln -s -T $DIR/zsh/antigen.zsh $HOME/.antigen.zsh 2> /dev/null

echo 'Building YouCompleteMe...'
( cd vim/bundle/YouCompleteMe; ./install.sh --clang-completer )

for file in $RC; do
  if [[ $file == '.gitconfig' && $USER != 'mige' && $USER != 'miguel' ]]; then
    echo "Not linking $file, it has my name in it! Do it yourself"
  else
    if [[ $(readlink -f $HOME/$file) != $(readlink -f $here/$file) ]]; then
      ln -isTV $DIR/$file $HOME/.$file
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

#!/bin/bash
git submodule update --init --recursive

echo 'Building YouCompleteMe...'
( cd vim/bundle/YouCompleteMe; ./install.sh --clang-completer )

echo 'linking files...'
here="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
for file in gitconfig vim vimrc; do
  if [[ $file == '.gitconfig' && $USER != 'mige' && $USER != 'miguel' ]]; then
    echo "Not linking $file, it has my name in it! Do it yourself"
  else
    if [[ $(readlink -f $HOME/.$file) != $(readlink -f $here/$file) ]]; then
      ln -sTf $here/$file $HOME/.$file
      echo "linked $file"
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

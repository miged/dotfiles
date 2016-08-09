#!/bin/bash
RC="bash_profile zshrc gitconfig"

git submodule update --init --recursive

for file in $RC; do
  if [[ $file == '.gitconfig' && $USER != 'mige' && $USER != 'miguel' ]]; then
    echo "Not linking $file, it has my name in it! Do it yourself"
  else
    if [[ $(readlink -f $HOME/$file) != $(readlink -f $here/$file) ]]; then
      ln -i -s -T -v $PWD/$file $HOME/.$file
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

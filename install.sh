#!/bin/bash

RC="bash_profile zshrc"
NOLINK="gitconfig"

type git >/dev/null 2>&1 || { echo >&2 "Install git first!\n"; exit 1; }
type zsh >/dev/null 2>&1 || { echo >&2 "Install zsh first!\n"; exit 1; }

link_file()
{
  if [ -f $HOME/.$1 ]; then
    if [ -h $HOME/.$1 ]; then
      unlink $HOME/.$1
    else
      echo "Backing up .$1 to .$1.bak"
      mv $HOME/.$1 $HOME/.$1.bak
    fi
  fi
  ln -s $PWD/$1 $HOME/.$1
}
    
for file in $RC; do
  link_file $file
done

for file in $NOLINK; do
  if [ -f $HOME/.$file ]; then
    if [ -L $HOME/.$1 ]; then
      unlink $HOME/.$1
    else
      echo "Backing up .$file to .$file.bak"
      mv $HOME/.$file $HOME/.$file.bak
    fi
  fi
  cp $file $HOME/.$file
done

read -p "Set up git email? (y/n) " yn
case $yn in 
  [Yy]* )
    read -p "Enter your email: " email
    git config --global user.email $email
    ;;
  *) ;;
esac  

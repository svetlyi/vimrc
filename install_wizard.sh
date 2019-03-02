#!/bin/bash
# installs essential things

# .bash_profile

read -r -p "Installing .bash_profile [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
then
  cp .bash_profile ~/.bash_profile
  . ~/.bash_profile
else
  echo "skipping"
fi

# .bash_aliases

read -r -p "Installing .bash_aliases [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
then
  cp .bash_aliases ~/.bash_aliases
  . ~/.bash_aliases
else
  echo "skipping"
fi


# vim

read -r -p "Installing vim+plugins [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
then
 . install_vim.sh
else
  echo "skipping"
fi

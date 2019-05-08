#!/bin/bash
# installs essential things

# .bash_profile

read -r -p "Installing .bash_profile [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
then
  cp .bash_profile ~/.bash_profile
  echo ".bash_profile has been copied"
  . ~/.bash_profile
  sudo chmod 740 ~/.bash_profile
  # if "~/.bash_profile" does not exist in ~/.bashrc, we will add it:
  if grep -Fxq "if [ -f ~/.bash_profile ]; then" ~/.bashrc
  then
    echo "bash_profile invoking already exists"
  else
    echo "\n" >> ~/.bashrc
    echo "if [ -f ~/.bash_profile ]; then" >> ~/.bashrc
    echo "  . ~/.bash_profile" >> ~/.bashrc
    echo "fi" >> ~/.bashrc
  fi
else
  echo "skipping"
fi

# .bash_aliases

read -r -p "Installing .bash_aliases [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
then
  cp .bash_aliases ~/.bash_aliases
  echo ".bash_aliases has been copied"
  . ~/.bash_aliases
  sudo chmod 740 ~/.bash_aliases
  # if "~/.bash_aliases" does not exist in ~/.bashrc, we will add it:
  if grep -Fxq "if [ -f ~/.bash_aliases ]; then" ~/.bashrc
  then
    echo "bash_aliases invoking already exists"
  else
    echo "\n" >> ~/.bashrc
    echo "if [ -f ~/.bash_aliases ]; then" >> ~/.bashrc
    echo "  . ~/.bash_aliases" >> ~/.bashrc
    echo "fi" >> ~/.bashrc
  fi

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


# install utils

read -r -p "Installing utils [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
then
  sudo cp utils/backitup.sh /usr/local/bin/backitup
  sudo cp utils/syncit.sh /usr/local/bin/syncit
else
  echo "skipping"
fi

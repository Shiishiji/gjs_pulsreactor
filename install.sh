#!/usr/bin/env zsh

### ### ### ### ### ### ### ###
### Installation script
### PULSE REACTOR EXTENSION
### ### ### ### ### ### ### ###

readonly EXTENSION_NAME="123d682e-2552-43fa-9446-6badf70a90f4@shiishiji.github.io"
readonly EXTENSION_DIRECTORY=~/.local/share/gnome-shell/extensions/$EXTENSION_NAME

if [ ! -d $EXTENSION_DIRECTORY ]; then
  echo "Previous installation not found, creating new directory"
  mkdir $EXTENSION_DIRECTORY
else
  echo "Removing old version"
  # Do not change this to EXTENSION_DIRECTORY/* because it will remove /* in case when EXTENSION_DIRECTORY is null
  rm -rf ~/.local/share/gnome-shell/extensions/$EXTENSION_NAME/*
fi

echo "Installing new version"
cp -R ./src/* $EXTENSION_DIRECTORY/
ls -l $EXTENSION_DIRECTORY
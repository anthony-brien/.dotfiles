#!/bin/bash

# Sets up symbolic links in the correct locations.

# Hyper terminal
rm ~/.hyper.js
ln ~/.dotfiles/hyperterminal/.hyper.js ~/.hyper.js 

# Visual Studio Code
rm ~/Library/Application\ Support/Code/User/settings.json
ln ~/.dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json 

# bash
rm ~/.bash_profile
ln ~/.dotfiles/.bash_profile ~/.bash_profile
rm ~/.bashrc
ln ~/.dotfiles/.bashrc ~/.bashrc

# Git
rm ~/.gitconfig
ln ~/.dotfiles/.gitconfig ~/.gitconfig
rm ~/.gitignore
ln ~/.dotfiles/.gitignore ~/.gitignore
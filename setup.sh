#!/bin/bash

# Sets up symbolic links in the correct locations.

function SetupLink()
{

    #echo ln -f "$1" "$2"
    ln -f "$1" "$2"

    echo $1 =\> $2
}

# Hyper terminal
SetupLink ~/.dotfiles/hyperterminal/.hyper.js ~/.hyper.js 

# Visual Studio Code
SetupLink ~/.dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

# bash
SetupLink ~/.dotfiles/bash/.bash_profile ~/.bash_profile
SetupLink ~/.dotfiles/bash/.bashrc ~/.bashrc
SetupLink ~/.dotfiles/bash/.powerline-shell.json ~/.powerline-shell.json

# zsh
SetupLink ~/.dotfiles/zsh/.zshrc ~/.zshrc
SetupLink ~/.dotfiles/zsh/.zshrc ~/.zshrc

# Git
SetupLink ~/.dotfiles/git/.gitconfig ~/.gitconfig
SetupLink ~/.dotfiles/git/.gitignore ~/.gitignore
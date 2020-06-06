#!/bin/bash

# Sets up symbolic links in the correct locations.

function SetupLink()
{

    #echo ln -f "$1" "$2"
    ln -f "$1" "$2"

    echo $1 =\> $2
}

# Hyper terminal
SetupLink ~/git/.dotfiles/hyperterminal/.hyper.js ~/.hyper.js 

# Visual Studio Code
SetupLink ~/git/.dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

# bash
SetupLink ~/git/.dotfiles/bash/.bash_profile ~/.bash_profile
SetupLink ~/git/.dotfiles/bash/.bashrc ~/.bashrc
SetupLink ~/git/.dotfiles/bash/.powerline-shell.json ~/.powerline-shell.json

# zsh
SetupLink ~/git/.dotfiles/zsh/.zshrc ~/.zshrc

# Git
SetupLink ~/git/.dotfiles/git/.gitconfig ~/.gitconfig
SetupLink ~/git/.dotfiles/git/.gitignore ~/.gitignore

# vim
SetupLink ~/git/.dotfiles/vim/.vimrc ~/.vimrc

# powershell
ln -f ~/git/.dotfiles/powershell/profile.ps1 ~/.config/powershell/profile.ps1

source ./macos/set-defaults.sh
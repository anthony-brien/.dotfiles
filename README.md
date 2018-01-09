# Anthony Brien's .dotfiles

This is a collection of dotfiles and scripts I use for customizing Windows and MacOS to my liking and setting up the software development tools I use on a day-to-day basis. They should be cloned to your home directory so that the path is `~/.dotfiles/`.  The included setup script creates symlinks from your home directory to the files which are located in `~/.dotfiles/`.

![Cmder](cmder/anthony-cmder.png)

## Features

### On MacOS
- Sets up my favorite apps through Homebrew
- Sets up **iTerm2** and **Terminal.app** to use `zsh` and `oh-my-zsh`
- Set up a few [MacOS defaults](macos/set-defaults.sh)
- [Install script](setup.sh)

### On Windows
- Sets up Cmder to use zsh (through Cygwin)
- Sets up p4 settings
- [Install script](setup.bat)

### On Both MacOS and Windows
- [Git aliases](git/.gitconfig)
- [zsh aliases](zsh/.zshrc)
- Sets up **VS Code** settings
- Custom prompt using Powerline to show Git status

## Installation

```sh
$ git clone https://github.com/anthony-brien/.dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
$ chmod +x setup.sh
$ ./setup.sh
```

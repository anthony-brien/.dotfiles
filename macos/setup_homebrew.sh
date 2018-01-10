# Check Homebrew
# Install if we don't have it
#
# Courtesy od lapwinglabs.com

if test ! $(which brew); then
  echo "Installing homebrew"
  ruby -e "$(curl -fsSl https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew install caskroom/cask/brew-cask

# Update homebrew recipes
brew update

# Installs zsh
curl -L http://install.ohmyz.sh | sh
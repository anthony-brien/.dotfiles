#!/bin/sh

set +e

echo "  › show the ~/Library folder"
chflags nohidden ~/Library

echo "  › use dark menu bar and dock"
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"

echo "  › restore windows when restarting apps (required for iTerm2 sessions restore)"
defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool true

echo ""
echo "› Finder: "
echo "  › show path bar"
defaults write com.apple.finder ShowPathbar -bool true
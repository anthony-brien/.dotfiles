#!/bin/sh

if [ "$(uname -s)" != "Darwin" ]; then
	exit 0
fi

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


echo ""
echo "› Transmission:"
echo "  › Don't prompt for confirmation before downloading"
defaults write org.m0k.transmission DownloadAsk -bool false

echo "  › Trash original torrent files"
defaults write org.m0k.transmission DeleteOriginalTorrent -bool true

echo "  › Hide the donate message"
defaults write org.m0k.transmission WarningDonate -bool false

echo "  › Hide the legal disclaimer"
defaults write org.m0k.transmission WarningLegal -bool false

echo "  › Auto-add .torrent files in ~/Downloads"
defaults write org.m0k.transmission UseIncompleteDownloadFolder -bool true
defaults write org.m0k.transmission DownloadFolder -string "$HOME/Downloads/Torrents"
defaults write org.m0k.transmission IncompleteDownloadFolder -string "$HOME/Downloads/Torrents/Incomplete"
defaults write org.m0k.transmission AutoImportDirectory -string "$HOME/Downloads/Torrents/Incomplete"

echo "  › Auto-resize the window to fit transfers"
defaults write org.m0k.transmission AutoSize -bool true

echo "  > Set ratios"
defaults write org.m0k.transmission RatioCheck -bool true
defaults write org.m0k.transmission RatioLimit -float 0

echo "  › Set up the best block list"
defaults write org.m0k.transmission EncryptionRequire -bool true
defaults write org.m0k.transmission BlocklistAutoUpdate -bool true
defaults write org.m0k.transmission BlocklistNew -bool true
defaults write org.m0k.transmission BlocklistURL -string "http://john.bitsurge.net/public/biglist.p2p.gz"
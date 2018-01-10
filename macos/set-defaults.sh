#!/bin/sh

# Set MacOS defaults. My sources:
# - https://github.com/nicksp/dotfiles/blob/master/osx/set-defaults.sh

# Set computer name
COMPUTERNAME="Anthony's MacBook"
# HOSTNAME='mbp'
# LOCALHOSTNAME='mbp'

if [ "$(uname -s)" != "Darwin" ]; then
	exit 0
fi

set +e

# Set computer name (as done via System Preferences → Sharing)
#sudo scutil --set ComputerName $COMPUTERNAME
#sudo scutil --set HostName $HOSTNAME
#sudo scutil --set LocalHostName $LOCALHOSTNAME
#sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string $LOCALHOSTNAME


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


###############################################################################
# Apple software: Safari, Updater, iTunes, etc.                               #
###############################################################################

# Hide Safari's bookmark bar.
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Set up Safari for development.
#defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
#defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
#defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
#defaults write -g WebKitDeveloperExtras -bool true

# Privacy: don’t send search queries to Apple
#defaults write com.apple.Safari UniversalSearchEnabled -bool false
#defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Prevent Safari from opening ‘safe’ files automatically after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Set Safari’s home page to `about:blank` for faster loading
defaults write com.apple.Safari HomePage -string "about:blank"

# Use AirDrop over every interface.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Check for software updates daily, not just once per week.
defaults write com.assple.SoftwareUpdate ScheduleFrequency -int 1

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Only use UTF-8 in Terminal.app
# defaults write com.apple.terminal StringEncodings -array 4

# Disable some menu bar icons: Time Machine, Volume and User
# for domain in ~/Library/Preferences/ByHost/com.apple.stytemuiserver.*; do
#   "/System/Library/CoreServices/Menu Extras/TimeMachine.menu" \
#   "/System/Library/CoreServices/Menu Extras/Volume.menu" \
#   "/System/Library/CoreServices/Menu Extras/User.menu"
# done

###############################################################################
# Activity Monitor                                                            #
###############################################################################

# Show the main window when launching Activity Monitor
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true

# Visualize CPU usage in the Activity Monitor Dock icon
defaults write com.apple.ActivityMonitor IconType -int 5

# Show all processes in Activity Monitor
defaults write com.apple.ActivityMonitor ShowCategory -int 0

# Sort Activity Monitor results by CPU usage
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0

###############################################################################
# Interfaces: trackpad, mouse, keyboard, bluetooth, etc.
###############################################################################

# Map bottom right corner of Apple trackpad to right-click.
# defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
# defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
# defaults -currentHost write -g com.apple.trackpad.trackpadCornerClickBehavior -int 1
# defaults -currentHost write com.apple.trackpad.enableSecondaryClick -bool true

# Set a really fast keyboard repeat rate.
# defaults write -g KeyRepeat -int 0

# Disable press-and-hold for keys in favor of key repeat.
# defaults write -g ApplePressAndHoldEnabled -bool false

# Set language and text formats. (USD and Imperial Units)
defaults write -g AppleLanguages -array "en-CA"
defaults write -g AppleLocale -string "en_CA@currency=CAD"
# defaults write -g AppleMeasurementUnits -string "Inches"
# defaults write -g AppleMetricUnits -bool false

###############################################################################
# Screen
###############################################################################

# Hot corners
# Possible values:
#   0: no-op
#   2: Mission Control
#   3: Show application windows
#   4: Desktop
#   5: Start screen saver
#   6: Disable screen saver
#   7: Dashboard
#  10: Put display to sleep
#  11: Launchpad
#  12: Notification Center
# defaults write com.apple.dock wvous-bl-corner -int 5
# defaults write com.apple.dock wvous-bl-modifier -int 0

# Require password immediately after sleep or screen saver.
# defaults write com.apple.screensaver askForPassword -int 1
# defaults write com.apple.screensaver askForPasswordDelay -int 0

# Save screenshots to desktop and disable the horrific drop-shadow.
defaults write com.apple.screencapture location -string "${HOME}/Desktop/Screenshots"
defaults write com.apple.screencapture type -string "png"
defaults write com.apple.screencapture disable-shadow -bool true

# Enable sub-pixel rendering on non-Apple LCDs.
defaults write NSGlobalDomain AppleFontSmoothing -int 2

# Disable icons on the Desktop
# This will "hide" all the files on the Desktop, but one can still access
# the files through Finder. Makes things look pretty.
# defaults write com.apple.finder CreateDesktop -bool false && killall Finder

###############################################################################
# Finder
###############################################################################

# Show the ~/Library folder.
chflags nohidden ~/Library

# Set the Finder prefs for showing a few different volumes on the Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Always open everything in Finder's column view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show hidden files and file extensions by default
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Disable the warning when changing file extensions
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Allow text-selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Disable the warning before emptying the Trash
# defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Enable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool true

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Expand print panel by default
# defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Disable Resume system-wide
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false

# Disable the crash reporter
defaults write com.apple.CrashReporter DialogType -string "none"

###############################################################################
# SSD
###############################################################################

# Disable the sudden motion sensor as it’s not useful for SSDs
sudo pmset -a sms 0

###############################################################################
# Dock
###############################################################################

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

# Add several spacers
# defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
# defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
# defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
# defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

###############################################################################
# Do some clean up work.
###############################################################################

for app in "Activity Monitor" "Address Book" "Calendar" "Contacts" "cfprefsd" \
           "Dock" "Finder" "Mail" "Messages" "Safari" "SystemUIServer" \
           "Terminal" "Twitter" "iCal"; do
           kill all "${app}" > /dev/null 2>&1
done

# Wait a bit before moving on...
sleep 1

# ...and then.
echo "Success! Defaults are set."
echo "Some changes will not take effect until you reboot your machine."

# See if the user wants to reboot.
function reboot() {
  read -p "Do you want to reboot your computer now? (y/N)" choice
  case "$choice" in
    y | Yes | yes ) echo "Yes"; exit;; # If y | yes, reboot
    n | N | No | no) echo "No"; exit;; # If n | no, exit
    * ) echo "Invalid answer. Enter \"y/yes\" or \"N/no\"" && return;;
  esac
}

# Call on the function
if [[ "Yes" == $(reboot) ]]
then
  echo "Rebooting."
  sudo reboot
  exit 0
else
  exit 1
fi
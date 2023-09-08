###############################################################################
# UI / UX                                                                     #
###############################################################################

# Adjust toolbar title rollover delay !
defaults write NSGlobalDomain NSToolbarTitleViewRolloverDelay -float 0

# Set sidebar icon size to Small !
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1

# Automatically quit printer app once the print jobs complete !
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Restart automatically if the computer freezes !
sudo systemsetup -setrestartfreeze on

# Show battery percentage !
# defaults write com.apple.menuextra.battery ShowPercent YES

# Disable flash Clock indicator !
defaults write com.apple.menuextra.clock FlashDateSeparators -bool false

# Stop iTunes from responding to the keyboard media keys !
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist 2> /dev/null

# Save screenshots to the desktop !
defaults write com.apple.screencapture location -string "${HOME}/Desktop"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF) !
defaults write com.apple.screencapture type -string "png"

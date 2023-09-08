###############################################################################
# Boot                                                                        #
###############################################################################

# Disable audio feedback when volume is changed !
defaults write com.apple.sound.beep.feedback -bool false

# Show language menu in the top right corner of the boot screen !
sudo defaults write /Library/Preferences/com.apple.loginwindow showInputMenu -bool true

# Require password immediately after sleep or screen saver begins !
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

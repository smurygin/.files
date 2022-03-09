###############################################################################
# Naming                                                                      #
###############################################################################

# Set computer name (as done via System Preferences → Sharing)
sudo scutil --set ComputerName macbook
sudo scutil --set HostName macbook
sudo scutil --set LocalHostName macbook
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string macbook

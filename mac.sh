# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.mac` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

local SETTINGS=(
	"macos/common.sh"
	"macos/dock.sh"
	"macos/finder.sh"
	"macos/language.sh"
	"macos/keyboard.sh"
	"macos/boot.sh"
	"macos/activity-monitor.sh"
	"macos/naming.sh"
	"macos/iterm.sh"
	"macos/kill.sh"
)

for file in ${SETTINGS[@]}; do
  source $file
done

# Don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

# setting fonts
defaults write com.googlecode.iterm2 "Normal Font" -string "JetBrainsMono-Regular 12";
# reading iterm settings

defaults read -app iTerm > /dev/null 2>&1;

# Install command-line tools using Homebrew.

if [[ $(command -v brew) == "" ]]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Check your system for potential problems
brew doctor

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install zsh via brew
if test -n "$ZSH_VERSION"; then
	brew install zsh
fi

# Install oh-my-zsh
if [ ! -e ~/.oh-my-zsh ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# Make zsh as default shell
if [[ $SHELL != "/bin/zsh" ]]; then
	chsh -s $(which zsh)
fi

###############################################################################
# CLI                                                                         #
###############################################################################

brew install git
brew install awk
brew install iterm2
brew install zplug
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono
brew install exa
brew install mas-cli/tap/mas
mas install 497799835 # XCode

###############################################################################
# Messengers                                                                  #
###############################################################################

brew install --cask slack
brew install --cask telegram
brew install --cask discord
brew install --cask microsoft-teams

###############################################################################
# Misc                                                                        #
###############################################################################

mas install 937984704 # Amphetamine
mas install 526298438 # Lightshot

brew install --cask rectangle
brew install --cask flux
brew install --cask eul
brew install --cask dozer
brew install --cask keka
brew install --cask appcleaner
brew install --cask numi
brew install --cask teamviewer
brew install --cask bitwarden
brew install --cask obsidian
brew install --cask transmission

###############################################################################
# Develop                                                                     #
###############################################################################

brew install n
brew install --cask jetbrains-toolbox
brew install --cask google-chrome
brew install --cask dbeaver-community
brew install --cask imageoptim

###############################################################################
# Video                                                                       #
###############################################################################

brew install --cask iina

###############################################################################
# Cleanup                                                                       #
###############################################################################

brew cleanup

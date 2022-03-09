#!/bin/bash

function header() {
  echo "$(tput sgr 0 1)$(tput setaf 6)$1$(tput sgr0)"
}

# brew
header "🟢 install homebrew..."
source ./brew.sh

# mac
header "🟢 setup macos..."
source ./mac.sh

# symlinks
header "🟢 create symlinks..."
source ./symlinks.sh

# ssh
header "🟢 create ssh..."
source ./ssh.sh

header "🟢 macOS configuration completed!"

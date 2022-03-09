###############################################################################
# ZSH                                                                         #
###############################################################################

ZSHDOTDIR=$HOME/projects/configs/.files/zsh

# Start Oh My Zsh                                                             #
[ -f $ZSHDOTDIR/.oh-my-zsh ] && source $ZSHDOTDIR/.oh-my-zsh

# Prepend $PATH without duplicates
function _prepend_path() {
  if ! $( echo "$PATH" | tr ":" "\n" | grep -qx "$1" ) ; then
    PATH="$1:$PATH"
  fi
}

PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"

export PATH
export ZPLUG_HOME=$(brew --prefix)/opt/zplug

local SOURCES=(
	# vars and configs
	"$ZSHDOTDIR/vars.zsh"
	"$ZSHDOTDIR/spaceship.zsh"

	# setup zplug
	"$ZSHDOTDIR/zplug.zsh"

	# aliases
	"$ZSHDOTDIR/aliases.zsh"
)

for file in ${SETTINGS[@]}; do
  [ -f $file ] && source $file
done

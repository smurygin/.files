###############################################################################
# spaceship theme setup                                                       #
###############################################################################

export SPACESHIP_CHAR_SYMBOL=" ➜ "
export SPACESHIP_PROMPT_ADD_NEWLINE=true
export SPACESHIP_PROMPT_SEPARATE_LINE=true
export SPACESHIP_PROMPT_PREFIXES_SHOW=true
export SPACESHIP_PROMPT_SUFFIXES_SHOW=true
export SPACESHIP_PROMPT_DEFAULT_PREFIX="via "
export SPACESHIP_PROMPT_DEFAULT_SUFFIX=" "

export SPACESHIP_PROMPT_PREFIXES_SHOW=false
export SPACESHIP_TIME_SHOW=true
export SPACESHIP_BATTERY_THRESHOLD=30
SPACESHIP_PROMPT_ORDER=(
  time
	user
	dir
	host
	git
	package
	node
	jobs
	exit_code
	char
)

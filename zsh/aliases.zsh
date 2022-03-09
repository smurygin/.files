###############################################################################
# Aliases                                                                     #
###############################################################################

# git
alias g="git"

# npm
alias nr="npm run"
alias ni="npm i"
alias rmn="rm -rf ./node_modules"
alias rmnl="rm -rf ./node_modules package-lock.json"

# osx
alias ..="cd .."
alias l="exa --all"
alias ll="exa --long --all --git"

# show ip
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
# flush DNS cache
alias fdns="sudo killall -HUP mDNSResponder && sudo dscacheutil -flushcache"


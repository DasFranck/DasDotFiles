# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="das"
#ZSH_THEME="geoffgarside"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

## User configuration

# Alias
alias dhcpcd='sudo dhcpcd'
alias mount='sudo mount'
alias umount='sudo umount'
alias tree='tree -aC'
alias zrc='. ~/.zshrc'
alias rzc='. ~/.zshrc'

# DaScripts
alias DasIP='echo "$(curl -s http://ipecho.net/plain)"'
alias DasPing='sudo ping google.fr -c 15'
alias DaSuya='brew update && brew upgrade'
alias DaSyu='brew update && brew upgrade'
alias DasV='uname -a'
alias vim='nvim'
alias v='/usr/bin/vim'

# Alias (Mac specific)
alias ring="afplay /System/Library/Sounds/Glass.aiff"


#Browser
export BROWSER="firefox"

#Editor
export EDITOR="vim"


# Locale
export LC_NUMERIC="fr_FR.utf8"
export LC_TIME="fr_FR.utf8"
export LC_MONETARY="fr_FR.utf8"
export LC_PAPER="fr_FR.utf8"
export LC_ADDRESS="fr_FR.utf8"
export LC_TELEPHONE="fr_FR.utf8"
export LC_MEASUREMENT="fr_FR.utf8"

export GOPATH=~/go

export TTC_SAY_BOX="cat"
export TTC_REPOS="~/git"
export TTC_REPOS_DEPTH="2"
export TTC_WEATHER="Paris"

source $ZSH/oh-my-zsh.sh

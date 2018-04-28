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
alias ls='ls --color=auto'
alias netsoul='sudo /home/dasfranck/jogsoul.pl /home/dasfranck/jogsoul.conf'
alias dhcpcd='sudo dhcpcd'
alias mount='sudo mount'
alias umount='sudo umount'
alias mosucks='mount /dev/sda8 ~/osuce'
alias umosucks='umount ~/osuce'
alias wifi-menu='sudo wifi-menu'
alias ocaml='rlwrap ocaml'
alias tree='tree -aC'
alias zrc='. ~/.zshrc'
#alias git push='git push -v'

# TrollScripts
alias inf-eject='while :; do eject; done'

# DaScripts
alias DasIP='echo "$(curl -s http://ipecho.net/plain)"'
alias DasMount='sudo mount /dev/sdc1 /mnt/usb && cd /mnt/usb'
alias DasPing='sudo ping google.fr -c 15'
alias DaSuya='yaourt -Suya'
alias DaSyu='yaourt -Syu'
alias DasUmount='sudo umount /mnt/usb/'
alias DasV='uname -a'
alias pacman='sudo pacman'
alias refreshmirrors='sudo reflector --verbose -l 200 --sort rate --save /etc/pacman.d/mirrorlist'
alias vim='nvim'
alias v='/usr/bin/vim'

source $ZSH/oh-my-zsh.sh

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

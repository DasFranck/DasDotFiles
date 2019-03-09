# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

ZSH_THEME="geoffgarside"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(aws docker git pip python vscode)

source $ZSH/oh-my-zsh.sh

## User configuration
# Alias
alias dhcpcd='sudo dhcpcd'
alias mount='sudo mount'
alias umount='sudo umount'
alias wifi-menu='sudo wifi-menu'
alias ocaml='rlwrap ocaml'
alias tree='tree -aC'
alias zrc='. ~/.zshrc'
# alias git push='git push -v'

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
alias vsc='code'
alias ls='lsd'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# Browser
export BROWSER="firefox"

# Editor
export EDITOR="nvim"

# Locale
export LC_NUMERIC="fr_FR.utf8"
export LC_TIME="fr_FR.utf8"
export LC_MONETARY="fr_FR.utf8"
export LC_PAPER="fr_FR.utf8"
export LC_ADDRESS="fr_FR.utf8"
export LC_TELEPHONE="fr_FR.utf8"
export LC_MEASUREMENT="fr_FR.utf8"

export GOPATH=~/go

rc(){
  systemctl list-unit-files --type=service |\
  sed 's/.service//g' |\
  sed '/static/d' |\
  sed '/indirect/d' |\
  sed '/systemd/d' |\
  sed '/dbus-org/d' |\
  sed '/canberra/d'|\
  sed '/wpa_supplicant/d' |\
  sed '/netctl/d' |\
  sed '/rfkill/d' |\
  sed '/krb5/d' |\
  tail -n+2 |\
  head -n -2 |\
  sed 's/\(^.*enabled.*$\)/[x] \1/' |\
  sed 's/enabled//g' |\
  sed 's/\(^.*disabled.*$\)/[ ] \1/' |\
  sed 's/disabled//g' |\
  sed 's/[ \t]*$//' |\
  while read line; do
      if [[ $line == *'[x]'* ]]; then
        printf "\033[0;32m$line\n"
      else
        printf "\033[1;30m$line\n"
      fi
  done
  syncthing_status=`systemctl is-active syncthing@${USER}.service`
  if [[ $syncthing_status == "active" ]]; then
    printf "\033[0;32m[x] syncthing (${USER})\n"
  else
    printf "\033[1;30m[ ] syncthing (${USER})\n"
  fi
}

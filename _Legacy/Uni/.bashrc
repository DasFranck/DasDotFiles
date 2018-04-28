#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Shell
PS1='\e[1;33m[\u | \W] \e[m'

# Alias
alias brasero='dbus-launch brasero'
alias cp='acp -g'
alias ls='ls --color=auto'
alias netsoul='sudo /home/dasfranck/jogsoul.pl /home/dasfranck/jogsoul.conf'
alias dhcpcd='sudo dhcpcd'
alias mount='sudo mount'
alias umount='sudo umount'
alias wifi-menu='sudo wifi-menu'
alias xboxdrv='sudo xboxdrv'
alias pacman='sudo pacman'
alias npp='wine "C:\Program Files (x86)\Notepad++\notepad++.exe"'

# TrollScripts
alias inf-eject='while :; do eject; done'

# DaScripts
alias DaSuya='yaourt -Suya'
alias DaSyu='sudo pacman -Syu'
alias DasMount='sudo mount /dev/sdb1 /mnt/usb && cd /mnt/usb'
alias DasPing='sudo ping google.fr -c 15'
alias DasUmount='sudo umount /mnt/usb/'
alias DasV='uname -a'


# Path
export PATH=/mybin:$PATH

# Browser
export BROWSER="chromium"

# Editor
export EDITOR="vim"


# Locale
export LC_NUMERIC="fr_FR.utf8"
export LC_TIME="fr_FR.utf8"
export LC_MONETARY="fr_FR.utf8"
export LC_PAPER="fr_FR.utf8"
export LC_ADDRESS="fr_FR.utf8"
export LC_TELEPHONE="fr_FR.utf8"
export LC_MEASUREMENT="fr_FR.utf8"

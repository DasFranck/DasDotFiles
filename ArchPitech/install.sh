#!/bin/bash

#Ajout du dépot ArchLinuxFr
#echo -e "\n[archlinuxfr]\nSigLevel = Never\nServer = http://repo.archlinux.fr/\$arch" >> /etc/pacman.conf
sudo pacman -Syu --noconfirm


#Installation des packages requis
sudo pacman -S --noconfirm i3 zsh firefox man htop terminology pavucontrol dmenu yaourt numlockx xorg xorg-xinit feh conky

#Installation de oh-my-zsh
curl -L http://install.ohmyz.sh | sh

#Mise par défaut de zsh	
if	[[ $SHELL = '/bin/zsh' ]]
	then
	(sudo chsh -s /bin/zsh && echo "zsh est maintenant le shell par défaut") 
	|| echo "Erreur dans la mise par défaut de zsh"
else
	echo "zsh est déjà le shell par défaut"
fi

	
#Configuration de zsh
(cp -f zshrc /home/dasfranck/.zshrc && echo "zsh configuré avec succès") || echo "Erreur dans la configuration de zsh"

#Configuration de oh-my-zsh
(cp -f das.zsh-theme /home/dasfranck/.oh-my-zsh/themes/ && echo "Thème Das de oh-my-zsh installé avec succès") || echo "Erreur dans l'installation du thème Das de oh-my-zsh"

#Configuration de xinit
(cp -f xinitrc /home/dasfranck/.xinitrc && echo "xinit configuré avec succès") || echo "Erreur dans la configuration de xinit"

#Configuration de i3
(cp -f i3/config /home/dasfranck/.i3/config && echo "i3 configuré avec succès") || echo "Erreur dans la configuration de i3"

#Configuration de i3status
(cp -f i3status.conf /home/dasfranck/.i3status.conf && echo "i3status configuré avec succès") || echo "Erreur dans la configuration de i3status"

#Configuration de vim
(cp -f vimrc /home/dasfranck/.vimrc && echo "vim configuré avec succès") || echo "Erreur dans la configuration de vim");

#Installation du colorsheme vim
(cp -f jellybeans.vim /home/dasfranck/.vim/colors/jellybeans && echo "jellybeans.vim installé avec succès") || echo "Erreur dans l'installation de jellybeans.vim"

#Installation des fonts powerline
(git clone https://github.com/powerline/fonts.git && cd fonts && ./install.sh && cd ../ && rm -rf fonts) || echo "Erreur lors de l'installation des fonts powerline"



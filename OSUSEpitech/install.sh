#!/bin/bash

LOGIN='hochst_f'

#Installation des packages requis
sudo zypper -n i3 i3status zsh xinit MozillaFirefox vim

#Installation de oh-my-zsh
curl -L http://install.ohmyz.sh | sh

#Mise par défaut de zsh	
if	[[ $SHELL = '/bin/zsh' ]]
	then
	(sudo chsh -s /bin/zsh && echo "zsh est maintenant le shell par défaut") || echo "Erreur dans la mise par défaut de zsh"
else
	echo "zsh est déjà le shell par défaut"
fi
	
#Configuration de zsh
(cp -f zshrc /home/$LOGIN/.zshrc && echo "zsh configuré avec succès") || echo "Erreur dans la configuration de zsh"

#Configuration de oh-my-zsh
(cp -f das.zsh-theme /home/$LOGIN/.oh-my-zsh/themes/ && echo "Thème Das de oh-my-zsh installé avec succès") || echo "Erreur dans l'installation du thème Das de oh-my-zsh"

#Configuration de xinit
(cp -f xinitrc /home/$LOGIN/.xinitrc && echo "xinit configuré avec succès") || echo "Erreur dans la configuration de xinit"

#Configuration de i3
(cp -f i3/config /home/$LOGIN/.i3/config && echo "i3 configuré avec succès") || echo "Erreur dans la configuration de i3"

#Configuration de i3status
(cp -f i3status.conf /home/$LOGIN/.i3status.conf && echo "i3status configuré avec succès") || echo "Erreur dans la configuration de i3status"

#Installation du colorsheme vim
(cp -f jellybeans.vim /home/$LOGIN/.vim/colors/jellybeans && echo "jellybeans.vim installé avec succès") || echo "Erreur dans l'installation de jellybeans.vim"
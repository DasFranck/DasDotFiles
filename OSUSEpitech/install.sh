#!/bin/bash

LOGIN='hochst_f'

#Installation de zsh
if	[ ! -f /bin/zsh ] 
	then
	echo "Installation de zsh"
	(sudo zypper -n install zsh && echo "zsh installé avec succès") || echo "Erreur dans l'installation de zsh"
else
	echo "zsh est déjà installé"
fi


#Mise par défaut de zsh	
if	[[ $SHELL = '/bin/zsh' ]]
	then
	(sudo chsh -s /bin/zsh && echo "zsh est maintenant le shell par défaut") || echo "Erreur dans la mise par défaut de zsh"
else
	echo "zsh est déjà le shell par défaut"
fi

	
#Configuration de zsh
(cp -f .zshrc /home/$LOGIN/.zshrc && echo "zsh configuré avec succès") || echo "Erreur dans la configuration de zsh"

#Installation de xinit
if	[ ! -f /usr/bin/xinit ] 
	then
	echo "Installation de i3"
	(sudo zypper -n install xinit && echo "xinit installé avec succès") || echo "Erreur dans l'installation de xinit"
else
	echo "xinit est déjà installé"
fi

#Configuration de xinit
(cp -f .xinitrc /home/$LOGIN/.xinitrc && echo "xinit configuré avec succès") || echo "Erreur dans la configuration de xinit"

#Installation de i3
if	[ ! -f /usr/bin/i3 ] 
	then
	echo "Installation de i3"
	(sudo zypper -n install zsh && echo "i3 installé avec succès") || echo "Erreur dans l'installation de i3"
else
	echo "i3 est déjà installé"
fi


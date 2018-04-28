cfdisk
	/sda ->  30 Go /	  X2
		 ->  RESTE /home  X3
	 
mkfs.ext4 /sdaX2
mkfs.ext4 /sdaX3

mount /dev/sdaX2 /mnt && mkdir /mnt/{boot,home} && mount /dev/sda1 /mnt/boot
mount /dev/sdaX3 /mnt/home

timedatectl (timedatectl set-time '2015-01-11 13:00:00')

pacstrap /mnt base base-devel vim dialog wpa_supplicant git reflector wget

genfstab -U -p /mnt >> /mnt/etc/fstab
arch-chroot /mnt
	reflector --verbose -l 200 --sort rate --save /etc/pacman.d/mirrorlist
	vim /etc/hostname
	vim /etc/locale.gen (en_GB.UTF-8 UTF-8)
	locale-gen
	echo 'LANG="en_GB.UTF-8' >> /etc/locale.conf
	echo 'KEYMAP=fr-latin9'  >> /etc/vconsole.conf
	ln -s /usr/share/zoneinfo/Europe/Paris /etc/localtime
	mkinitcpio -p linux
	grub-mkconfig -o  /boot/grub/grub.arch
	cp /boot/grub/grub.cfg /boot/grub/grub.old
	passwd
	wget http://dasfranck.fr/Stuff/adduser
	chmod u+x adduser
	./adduser dasfranck
	rm adduser
	exit
umount /mnt/boot /mnt/home /mnt
REBOOT

LOG as DasFranck

mkdir Prog
mkdir Prog/git
cd Prog/git/
git clone https://github.com/DasFranck/MCL.git
./install.sh
#!/bin/bash

# EDITA O SUDOERS

# INSTALA APPS

sudo apt-get install vim vim-addon-manager lshw-gtk brasero k3b k3b-extrathemes gparted unetbootin wally wine winetricks conky-all gthumb gimp gdebi vlc openshot xchat wireshark qbittorrent gnome-gmail gnome-gmail-notifier chromium-browser meld pyrenamer keepassx devede compizconfig-setting-manager mypaint mypaint-data tomboy vym shutter dropbox nautilus-dropbox# ubuntu-benchmark-tools ubuntu-after-install unity-tweak-tool

# INSTALA DRIVER E APPS PARA PLACA DE VIDEO AMD/ATI
sudo apt-get remove fglrx-control
sudo apt-get install radeontop fglrx-updates fglrx-amdcccle
sudo apt-get install fglrx
sudo apt-get install radeontop
sudo apt-get install fglrx-amdcccle-updates
sudo apt-get install fglrx-amdcccle
# alternativa: sudo apt-get install xserver-xorg-video-ati

# BAIXA E INSTALA O VIRTUALBOX
#wget http://download.virtualbox.org/virtualbox/4.2.16/virtualbox-4.2_4.2.16-86992~Ubuntu~precise_amd64.deb

#sudo dpkg -i virtualbox-4*.deb

#wget http://download.virtualbox.org/virtualbox/4.2.16/Oracle_VM_VirtualBox_Extension_Pack-4.2.16-86992.vbox-extpack

#virtualbox Oracle_VM_VirtualBox_Extension_Pack-4*

# BAIXA E INSTALA O COPY

wget https://copy.com/install/linux/Copy.tgz
sudo tar xzf Copy.tgz -C /opt/. 

# configurar a inicialização automática

# FALTA INSTALAR: git git-all? 

# INSTALA MARIADB:

sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db

# ADICIONAR O TEXTO ABAIXO EM /etc/apt/sources.list.d/MariaDB.list OU NO FINAL DE /etc/apt/sources.list

# MariaDB 5.5 repository list - created 2013-10-25 01:36 UTC
# http://mariadb.org/mariadb/repositories/
deb http://mirrors.fe.up.pt/pub/mariadb/repo/5.5/debian squeeze main
deb-src http://mirrors.fe.up.pt/pub/mariadb/repo/5.5/debian squeeze main

sudo apt-get update
sudo apt-get install mariadb-server

echo "INSTALAR MANUALMENTE:"
echo "virtualbox"


#!/bin/sh
RED='\033[0;31m'
GREEN='\033[1;32m'
ORANGE='\033[0;33m'
VAGRANT="."
read -p "Inserez le chemin du dossier d'installation  : " VAGRANT
mkdir $VAGRANT/vagrant
$VAGRANT/vagrant
curl https://raw.githubusercontent.com/bclerc/vagrant/master/Vagrantfile > $VAGRANT/vagrant/Vagrantfile
echo "${ORANGE}Instalation de vagrant-vbguest ... "
vagrant plugin install vagrant-vbguest
echo "${GREEN}Voulez-vous lancer valgrant ? [y/n] "
read UP
if [ $UP = "y" ]
    then 
        echo "${ORANGE}Lancement de vagrant ... " && vagrant up && echo "${GREEN}Vagrant en ligne !";
    else
        exit 0;
fi
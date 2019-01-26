#!/bin/sh
VAGRANT="."
read -p "Inserez le chemin du dossier d'installation  : " VAGRANT
mkdir $VAGRANT/vagrant
$VAGRANT/vagrant
curl https://raw.githubusercontent.com/bclerc/vagrant/master/Vagrantfile > $VAGRANT/vagrant/Vagrantfile
vagrant plugin install vagrant-vbguest
read -p "Vagrant installer. Voulez vous lancez valgrant ? [y/n] " UP
if [ $UP = "y" ]
    then 
        echo "Lancement de vagrant ... " && vagrant up;
    else
        exit 0;
fi
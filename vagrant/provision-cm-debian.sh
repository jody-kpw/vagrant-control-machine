#!/bin/bash
sudo apt-get -y update
sudo apt-get -y upgrade

# This software provides an abstraction of the used apt repositories.
sudo apt install -y software-properties-common

# Install GIT
sudo apt-get install -y git

# Install Python
sudo apt-get install -y python
sudo apt-get install -y python-pip
sudo apt-get install -y python-simplejson

# Install Python3.6
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install -y python3.6

# Install Ansible
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get -y update
sudo apt install -y ansible

# Automate ssh-keygen -t rsa so it does not ask for a passphrase
# su -c  "ssh-keygen -f /home/vagrant/.ssh/id_rsa -t rsa -N ''" vagrant
# cp /home/vagrant/.ssh/id_rsa.pub /provision/cm/ssh/

# Ansible
su -c  "ssh-keygen -f /root/.ssh/id_rsa -t rsa -N ''" root
cp /root/.ssh/id_rsa.pub /provision/cm/ssh/

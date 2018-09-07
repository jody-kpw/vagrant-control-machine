#!/bin/bash
# Update & Upgrade CentOS
yum update -y
yum upgrade -y

# Install python-pip and any required packages
sudo yum -y install python
sudo yum -y install python-pip

# Install Python 3.6
# https://www.digitalocean.com/community/tutorials/how-to-install-python-3-and-set-up-a-local-programming-environment-on-centos-7
sudo yum -y install https://centos7.iuscommunity.org/ius-release.rpm
sudo yum -y install python36u
sudo yum -y install python36u-pip
sudo yum -y install python36u-devel

# Install GIT
sudo yum install -y git

# Install Ansible
sudo yum install -y ansible

# Automate ssh-keygen -t rsa so it does not ask for a passphrase
# su -c  "ssh-keygen -f /home/vagrant/.ssh/id_rsa -t rsa -N ''" vagrant
# cp /home/vagrant/.ssh/id_rsa.pub /provision/cm/ssh/

# Ansible
su -c  "ssh-keygen -f /root/.ssh/id_rsa -t rsa -N ''" root
cp /root/.ssh/id_rsa.pub /provision/cm/ssh/

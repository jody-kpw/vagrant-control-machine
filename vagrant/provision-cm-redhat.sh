#!/bin/bash
# Update & Upgrade CentOS
yum update -y
yum upgrade -y

# Install python-pip and any required packages
sudo yum -y install python-pip

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

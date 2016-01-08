#!/bin/bash -eux

# Install EPEL repository.
rpm -ivh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm

# Install Ansible.
yum -y install ansible

# Other Packages
yum -y install sudo
sed -i -e "s/Defaults    requiretty.*/ #Defaults    requiretty/g" /etc/sudoers 
yum -y install unzip

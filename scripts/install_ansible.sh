#!/bin/bash
dir="/opt/scripts"
name="(Ansible)"

. ${dir}/helper_functions.sh

section_echo "$name Loading configuration"
if test -f ${dir}/config ; then
  . ${dir}/config
fi
section_echo "Finished loading configuration"

section_echo "$name Installation of packages"
apt install python3 -y
apt install python3-pip -y
apt install ansible -y

section_echo "Finished installation of packages"

section_echo "$name Setting up environment"

echo "alias a=ansible-playbook" >> /home/vagrant/.bashrc
echo "alias ap=ansible-playbook" >> /home/vagrant/.bashrc
echo "alias av=ansible-vault" >> /home/vagrant/.bashrc
echo "cd /opt/storage" >> /home/vagrant/.bashrc

section_echo "Finished setting up environment"


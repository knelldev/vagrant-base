#!/bin/bash
dir="/opt/scripts"
name="(Docker)"

. ${dir}/helper_functions.sh

section_echo "$name Loading configuration"
if test -f ${dir}/config ; then
  . ${dir}/config
fi
section_echo "Finished loading configuration"

section_echo "$name Installation of docker"

$(cd /tmp && curl -fsSL https://get.docker.com -o get-docker.sh)
sh /tmp/get-docker.sh

usermod -aG docker vagrant

section_echo "Finished installation of docker"

section_echo "$name Installation of packages"

apt install python3 -y
apt install python3-pip -y
pip3 install docker 

section_echo "Finished installation of packages"
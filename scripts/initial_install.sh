#!/bin/bash
dir="/opt/scripts"
name="(Initialization)"

. ${dir}/helper_functions.sh

section_echo "$name Loading configuration"
if test -f ${dir}/config ; then
  . ${dir}/config
fi
section_echo "Finished loading configuration"

section_echo "$name Installation of packages"
colored_echo "running apt update && apt upgrade"
apt update 1> /dev/null
apt upgrade 1> /dev/null
colored_echo "installing packages"
apt install htop
apt install nano
apt install git

section_echo "Finished installation of packages"

section_echo "$name Setting up environment"

echo "alias untar='tar -zxvf '" >> /home/vagrant/.bashrc
echo "alias sha='shasum -a 256 '" >> /home/vagrant/.bashrc
echo "alias hs='history | grep'" >> /home/vagrant/.bashrc
echo "export HISTCONTROL=ignorespace" >> /etc/environment
echo "alias svi='sudo vi'" >> /home/vagrant/.bashrc
echo "alias c='clear'" >> /home/vagrant/.bashrc
echo "alias ll='ls -la'" >> /home/vagrant/.bashrc
echo "alias l.='ls -d .* --color=auto'" >> /home/vagrant/.bashrc
echo "alias cd..='cd ..'" >> /home/vagrant/.bashrc
echo "alias ..='cd ..'" >> /home/vagrant/.bashrc
echo "alias ...='cd ../../../'" >> /home/vagrant/.bashrc
echo "alias ....='cd ../../../../'" >> /home/vagrant/.bashrc
echo "alias .....='cd ../../../../'" >> /home/vagrant/.bashrc
echo "alias grep='grep --color=auto'" >> /home/vagrant/.bashrc
echo "alias h='history'" >> /home/vagrant/.bashrc
echo "alias path='echo -e \${PATH//:/\\n}'" >> /home/vagrant/.bashrc
echo "alias ducks='du -cksh * | sort -rn | head'" >> /home/vagrant/.bashrc
echo "alias ols=\"ls -la --color | awk '{k=0;for(i=0;i<=8;i++)k+=((substr(\\\$1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(\\\" %0o \\\",k);print}'\"" >> /home/vagrant/.bashrc
echo "cd /opt/storage" >> /home/vagrant/.bashrc

section_echo "Finished setting up environment"

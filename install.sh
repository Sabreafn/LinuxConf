#!/bin/bash
dir=$(pwd)

# Small Conf
echo "deb https://mega.nz/linux/MEGAsync/Debian_11.0/ ./" | sudo tee /etc/apt/sources.list.d/megasync.list
wget -qO - https://mega.nz/linux/MEGAsync/Debian_11.0/Release.key | sudo apt-key add -

sudo apt update
clear

# List of packages to install                                              
packages=(                                                                 
    nala
    falkon
    bleachbit
    uget
    megasync
    git
    net-tools
    default-jre
    metasploit-framework
    exploitdb
    )

# Auto
for package in "${packages[@]}"                                            
do                                                                         
    sudo apt-get -y install "$package"                                     
done

# Manual Commands
searchsploit -u
clear
                                                                           
git clone https://github.com/aandrew-me/tgpt.git
cd tgpt
./install
cd ..
clear
echo "Done!"

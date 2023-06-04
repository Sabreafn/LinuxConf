#!/bin/bash
dir=$(pwd)

# List of packages to install                                              
packages=(                                                                 
    nala
    falkon
    bleachbit
    uget
    git
    net-tools
    default-jre
    metasploit-framework
    exploitdb
    )

for package in "${packages[@]}"                                            
do                                                                         
    sudo apt-get -y install "$package"                                     
done

searchsploit -u
clear
                                                                           
git clone https://github.com/aandrew-me/tgpt.git
cd tgpt
./install
cd ..
clear
echo "Done!"
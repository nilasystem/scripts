#!/bin/bash
sleep 1
clear
echo "############################################################################"
echo "#                            NodeJS Installer                              #"
echo "#                              by Nico L.                                  #"
echo "#                   https://github.com/nilasystem/scripts                  #"
echo "#                          Last Update: 27.06.2022                         #"
echo "############################################################################"
sleep 3
clear 
echo "############################################################################"
echo "#                            Checking for Root                             #"
echo "############################################################################"
if (( $EUID != 0 )); then
echo "############################################################################"
echo "#                            Please run as root                            #"
echo "############################################################################"
    exit
fi
sleep 1
clear
echo "############################################################################"
echo "#                             Checked for Root                             #"
echo "############################################################################"
sleep 2
clear
echo "############################################################################"
echo "#                          Press Enter to continue                         #"
echo "############################################################################"
read continuepress
sleep 1
clear
echo "############################################################################"
echo "#                              Installer                                   #"
echo "#                              by Nico L.                                  #"
echo "#                   https://github.com/nilasystem/scripts                  #"
echo "############################################################################"
echo "#                                                                          #"
echo "#     1 | NodeJS + NPM Installation                                        #"
echo "#     2 | NodeJS + NPM + PM2 Installation                                  #"
echo "#     3 | NodeJS + NPM + Screen                                            #"        
echo "#                                                                          #"    
echo "############################################################################"
read -p "Please enter a Number:" installnumber
# NodeJS Installation
if [ "$installnumber" = "1" ]; then
clear
sleep 1
echo "############################################################################"
echo "#                          Installing NodeJS                               #"
echo "############################################################################"
sleep 2
echo "############################################################################"
echo "#                      Server Update (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                      Server Upgrade (apt upgrade -y)                     #"
echo "############################################################################"
apt upgrade -y
wait -n 
echo "############################################################################"
echo "#                         Installing NodeJS                                #"
echo "# curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -        #"
echo "############################################################################"
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
wait -n
echo "############################################################################"
echo "#                 NodeJS Installation (apt install nodejs -y)              #"
echo "############################################################################"
apt install nodejs -y
wait -n
echo "############################################################################"
echo "#                    NPM Installation (apt install npm -y)                 #"
echo "############################################################################"
apt install npm -y
wait -n 
echo "############################################################################"
echo "#                         Installed NodeJS + NPM                           #"
echo "############################################################################"

fi
# NodeJS + PM2 Installation
if [ "$installnumber" = "2" ]; then
clear
sleep 1
echo "############################################################################"
echo "#                        Installing NodeJS + PM2                           #"
echo "############################################################################"
sleep 2
echo "############################################################################"
echo "#                      Server Update (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                      Server Upgrade (apt upgrade -y)                     #"
echo "############################################################################"
apt upgrade -y
wait -n
echo "############################################################################"
echo "#                         Installing NodeJS                                #"
echo "# curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -        #"
echo "############################################################################"
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
wait -n
echo "############################################################################"
echo "#                 NodeJS Installation (apt install nodejs -y)              #"
echo "############################################################################"
apt install nodejs -y
wait -n
echo "############################################################################"
echo "#                 NPM Installation (apt install npm -y)                    #"
echo "############################################################################"
apt install npm -y
wait -n 
echo "############################################################################"
echo "#                 PM2 Installation (npm install pm2@latest -g)             #"
echo "############################################################################"
npm install pm2@latest -g
wait -n
echo "############################################################################"
echo "#                     Installed NodeJS + NPM + PM2                         #"
echo "############################################################################"
fi
# NodeJS + Screen Installation
if [ "$installnumber" = "3" ]; then
clear
sleep 1
echo "############################################################################"
echo "#                       Installing NodeJS + Screen                         #"
echo "############################################################################"
sleep 2
echo "############################################################################"
echo "#                      Server Update (apt update -y)                       #"
echo "############################################################################"
apt update -y
wait -n
echo "############################################################################"
echo "#                      Server Upgrade (apt upgrade -y)                     #"
echo "############################################################################"
apt upgrade -y
wait -n 
echo "############################################################################"
echo "#                         Installing NodeJS                                #"
echo "# curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -        #"
echo "############################################################################"
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
wait -n
echo "############################################################################"
echo "#                 NodeJS Installation (apt install nodejs -y)              #"
echo "############################################################################"
apt install nodejs -y
wait -n
echo "############################################################################"
echo "#                 NPM Installation (apt install npm -y)                    #"
echo "############################################################################"
apt install npm -y
wait -n 
echo "############################################################################"
echo "#               Screen Installation (apt install screen -y)                #"
echo "############################################################################"
apt install screen -y
wait -n
echo "############################################################################"
echo "#                  Installed NodeJS + NPM + Screen                         #"
echo "############################################################################"
fi
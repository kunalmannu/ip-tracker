#!/bin/bash

banner() {

clear
printf "\e[0m\n"
printf "\e[1;33m   _______             _     \e[0m\e[1;32m  _____       \e[0m\n"
printf "\e[1;33m  |__   __|           | |    \e[0m\e[1;32m |_   _|      \e[0m\n"
printf "\e[1;33m     | |_ __ __ _  ___| | __ \e[0m\e[1;32m   | |  _ __  \e[0m\n"
printf "\e[1;33m     | |  __/ _  |/ __| |/ / \e[0m\e[1;32m   | | |  _ \ \e[0m\n"
printf "\e[1;33m     | | | | (_| | (__|   <  \e[0m\e[1;32m  _| |_| |_) |\e[0m\n"
printf "\e[1;33m     |_|_|  \__,_|\___|_|\_\ \e[0m\e[1;32m |_____| .__/ \e[0m\n"
printf "\e[1;32m                                    | |    \e[0m\n"
printf "\e[1;32m                                    |_|    \e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[1;33m    Created By KunalMannu \e[0m\e[1;31m(\e[0m\e[1;33mv-3.0\e[0m\e[1;31m)\e[0m\n"

}

menu() {
printf "\e[0m\n"
printf "\e[0m\e[1;31m  [\e[0m\e[1;37m01\e[0m\e[1;31m]\e[0m\e[1;33m Linux Install\e[0m\n"
printf "\e[0m\e[1;31m  [\e[0m\e[1;37m02\e[0m\e[1;31m]\e[0m\e[1;33m Termux Install\e[0m\n "
printf "\e[0m\e[1;31m [\e[0m\e[1;37m00\e[0m\e[1;31m]\e[0m\e[1;33m Exit\e[0m\n"
printf "\e[0m\n"
read -p $'  \e[1;31m[\e[0m\e[1;37m~\e[0m\e[1;31m]\e[0m\e[1;92m Select An Option \e[0m\e[1;96m: \e[0m\e[1;32m\en' option

if [[ $option == 1 || $option == 01 ]]; then
myipaddr
elif [[ $option == 2 || $option == 02 ]]; then
useripaddr
elif [[ $option == 0 || $option == 00 ]]; then
sleep 1
printf "\e[0m\n"
printf "\e[0m\n"
exit 1

else
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi

}
myipaddr() {
echo "UPDATING"
sudo apt-get update
clear
echo "INSTALLING PHP"
sudo apt-get install php
clear
echo "INSTALLING CURL"
sudo apt-get install curl
clear

echo "STARTING"
sudo bash ip-tracker.sh
clear

}

useripaddr() {
echo "UPDATING"
apt update && apt upgrade
clear
echo "INSTALLING PHP"
apt-get install php
clear
echo "INSTALLING CURL"
apt-get install curl
clear

echo "STARTING"
bash ip-tracker.sh
clear


}

banner
menu

#!bin/bash

clear
echo "UPDATING"
pkg update && apk upgrade -y
clear
echo "INSTALLING PHP"
pkg install php
clear
echo "INSTALLING CURL"
apt install curl
clear
echo "COMPLETED INSTALLATION

   _______             _       _____       
  |__   __|           | |     |_   _|      
     | |_ __ __ _  ___| | __    | |  _ __  
     | |  __/ _  |/ __| |/ /    | | |  _ \ 
     | | | | (_| | (__|   <    _| |_| |_) |
     |_|_|  \__,_|\___|_|\_\  |_____| .__/ 
                                    | |    
                                    |_|    

Created By KunalMannu (v-2.0)"


echo "Starting"
bash ip-tracker.sh
clear

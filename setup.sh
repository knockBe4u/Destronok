#!/bin/bash
echo -e "\e[32m===============================\e[0m"
echo -e "\e[32m|    WELCOME TO DESTRONOCK    \e[32m|"
echo -e "\e[32m===============================\e[0m"

echo -e "\e[33m-- ENVIRMENTAL SETUP PROSESS --\e[om "
echo -e "\e[32m====================================\e[om"
echo -e "\e[32m===== GIVE ME FEW MINUTES \e[32m===="
echo -e "\e[32m== DEPENDS ON YOUR INTERNET SPEED \e[32m=="
echo -e "\e[32m====================================\e[0m"

which msfconsole > /dev/null 2>&1
if [ "$?" -eq "0" ]
 then
    echo -e "\e[33m FOUND METASPLOIT IN YOUR SYSTEM \e[0m"
    which msfconsole > /dev/null 2>&1
    echo ""
    sleep 2
 else 
   echo -e "\e[33m METASPLOIT NOT FOUND | INSTALLED IT \e[33m"
   git clone https://github.com/rapid7/metasploit-framework.git
   cd metasploit
   chmod 777 metasploit.sh
   ./metasploit.sh
   cd ..
fi
mkdir /sdcard/destronok
echo " "
echo -e  "\e[33m GIVE ME FEW MINUTE \e[0m "
echo -e  "\e[33m PREREQUISITE ARE INSTALL\e[0m"
echo " "
apt update && apt upgrade
pkg install wget -y > /dev/null 2>&1
pkg install git -y > /dev/null 2>&1
pkg install ruby -y > /dev/null 2>&1
pkg install curl -y > /dev/null 2>&1
pkg install python -y > /dev/null 2>&1
pkg install openssh -y > /dev/null 2>&1
pkg install nmap -y > /dev/null 2>&1
gem install lolcat > /dev/null 2>&1

echo -e $lg ""
chmod 777 destronok
echo -e "\e[33m ENVIRMENTAL SETUP COMPLETE \e[0m "
echo -e "\e[33m ENTER TO CONTINUE \e[0m "
read mm
clear
echo ""
echo ""
des="/sdcard/destronok"
inj="/sdcard/inject"
if [ ! -d "$des" ]
 then
    echo -e "\e[33m CREATE A NEW DIRECTORY \e[0m "
    mkdir /sdcard/destronok
    echo " "
    sleep 2
    echo -e "\e[33m DIRECTORY CREATED \e[0m "
 else
    echo -e "\e[33m DIRECTORY ALREADY CREATED \e[0m "
    echo " "
fi
if [ ! -d "$inj" ]
 then
   echo " "
   echo -e "\e[33m CREATE A NEW DIRECTORY \e[0m "
   mkdir /sdcard/inject
   echo " "
   sleep 2
   echo -e "\e[33m DIRECTORY CREATED \e[0m "

 else
   echo -e "\e[33m DIRECTORY ALREADY CREATED \e[0m "
   echo " "
fi
echo " " 
echo -e "\e[33m SETUP FINISHED \e[0m "


lg='\e[1;32m'
ye='\e[1;33m'
blue='\e[1;34m'
re='\e[1;31m'
clear
echo " "
echo -e "\e[32m ===================================\e[92m|"
echo -e "\e[32m |    \e[100m WELCOME TO SETUP PROCESS \e[0m  \e[92m  |"
echo -e "\e[32m ===================================\e[0m\e[92m|" 
echo -e "\e[92m |   \e[45m INSTALL  PREREQUISITE TOOL\e[0m    \e[92m|"             
echo -e "\e[92m |   \e[100m CODED BY SUBHAYAN GOSWAMI\e[0m     \e[92m|"                 
echo -e "\e[92m |==================================\e[92m|"
echo -e "\e[92m | \e[40m ITS ONLY EDUCATIONAL PURPOSE\e[0m   \e[92m |"
echo -e "\e[92m |==================================\e[92m|"
sleep 2
#========================================================================================================
which msfconsole > /dev/null 2>&1
if [ "$?" -eq "0" ]
 then
    echo -e $ye "[ ${re}✔ ${ye}]=============================${lg}[ METASPLOIT ]"
    which msfconsole > /dev/null 2>&1
    echo ""
    sleep 2
 else 
   echo ""
   echo "   [-] METASPLOIT NOT FOUND.INSTALLING METASPLOIT "
   git clone https://github.com/rapid7/metasploit-framework.git
   cd metasploit
   chmod 777 metasploit.sh
   ./metasploit.sh
   cd ..
fi
echo " "
echo -e $ye "[${re}=${ye}] PLEASE GIVE ME FEW TIME "
echo " "
apt install toilet -y >/dev/null 2>&1
pkg install ruby -y > /dev/null 2>&1
gem install lolcat > /dev/null 2>&1
echo -e $lg ""
echo -e $blue " "
echo -n " ENTER TO CONTINUE "
read mm
clear
echo ""
echo ""
test="/sdcard/destronok"
dol="/sdcard/inject"
if [ ! -d "$test" ]
 then
    echo -e $ye "  [ ${re}-${ye} ]${re} CREATING NEW DIRECTORY"
    mkdir /sdcard/destronok
    echo " "
    sleep 2
    echo -e $ye "  [${lg} ✔ ${ye}] ${blue}DIRECTORY CREATED"
 else
    echo -e $ye "  [ ${lg}✔${ye} ] ${lg}DIRECTORY ALREADY EXIST"
    echo " "
fi
if [ ! -d "$dol" ]
 then
   echo " "
   echo -e $ye "  [${re} - ${ye}]${re} CREATING NEW DIRECTORY "
   mkdir /sdcard/inject
   echo " "
   sleep 2
   echo -e $ye "  [${lg} ✔ ${ye}] ${blue}DIRECTORY CREATED"

 else
   echo -e $ye "  [${lg} ✔ ${ye}] ${lg}DIRECTORY ALREADY EXIST"
   echo " "
fi
echo " " 
echo -e $ye " SETUP DONE"


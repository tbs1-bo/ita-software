#!/bin/sh
echo '+++ What does the script do exactly? +++'
echo ''
echo '[INFO] This script will only update your system.'
echo ''
echo ''
echo ''
while :
do
  read -p '[INFO] Do they agree to the script performing automated actions? (y/n)? ' ANSW
  case $ANSW in
	y)
		echo '[INFO] You have chosen Yes (y)!'
        echo '[INFO] The command line will now ask you once for your sudo password.'
        sudo apt update -y && sudo apt upgrade -y && sudo apt full-upgrade -y && sudo apt dist-upgrade -y && sudo apt autoremove -y sudo apt autoclean -y 
        ;;
	n)
		echo '[INFO] You have chosen No (n)!'
        echo ''
        echo '[INFO] For this reason, the script will not be executed further.'
		break
        ;;

	*)
		echo '[INFO] This is not a valid command. Please enter y or n.'
        ;;
  esac
done
echo '[INFO] The script is now finished.'

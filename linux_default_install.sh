#!/bin/sh
echo '+++ What does the script do exactly? +++'
echo ''
echo '[INFO] 1. First of all, it brings your system up to date.'
echo ''
echo '[INFO] 2. It installs various free and open source software solutions that are useful for both educational, professional, and personal use with Linux. '
echo ''
echo '[INFO] 3. After all free and open-source software solutions have been successfully installed, it will once again bring the system completely up to date.'
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
        sudo apt install -y vim vlc vscodium xampp dbeaver-ce wireshark obs-studio arduino veracrypt texlive-full wireguard git pdfsam bitbleach gimp mumble paperwork-gtk paperwork-gtk-l10n-fr firejail # TODO: Add FLOSS.
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

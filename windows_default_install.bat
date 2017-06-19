@echo off

REM Setup script for default software stack for ITAs on a windows machine.
REM This script must be run as administrator!
REM It installs chocolately first and uses it afterwards to install different
REM sofware packages.

REM Install chocolately.org
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

REM Tools
choco install cygwin cyg-get geany git putty python3 winscp win32diskimager -y

REM upgrade pip (from python)
python -m pip install --upgrade pip

REM install eapi for the eamodule
pip install eapi

REM Applications
choco install 7zip eagle foxitreader fritzing libreoffice notepadplusplus tightvnc wireshark -y

REM Install scapy via pip - needs Pcap (via wireshark)
pip install scapy-python3

choco install wget -y
wget https://www.apachefriends.org/xampp-files/5.6.30/xampp-win32-5.6.30-1-VC11-installer.exe
start /wait xampp-win32-5.6.30-1-VC11-installer.exe
del xampp-win32-5.6.15-1-VC11-installer.exe

pause

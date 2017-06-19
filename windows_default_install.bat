@echo off

REM Setup script for a default software stack for ITAs on a windows machine.
REM This script must be run as administrator!
REM It installs chocolately first and uses it afterwards to install different
REM sofware packages.

REM Install chocolately.org
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

REM Tools
REM =====
REM cygwin: Linux Tools for Windows.
REM geany: Text Editor
REM putty: SSH Client
REM python3: Programming language
REM winscp: Secure Copy between machines
REM win32diskimager: Writing disk images to sd cards
choco install cygwin geany git putty python3 winscp win32diskimager -y

REM upgrade pip (from python)
python -m pip install --upgrade pip

REM install eapi for the eamodule
pip install eapi

REM Applications
REM ============
REM 7zip: Archiver for different formats
REM eagle: Layouting electric circuits
REM foxitreader: Viewing and annotating PDF documents.
REM fritzing: like eagle.
REM libreoffice: Word prcoess, spreadsheets and presentations.
REM notepadplusplus: mighty editor.
REM tightvnc: Accessing remote machines.
REM virtualbox: Virtual machines
REM wireshark: Network traffic analyzer.
choco install 7zip eagle foxitreader fritzing libreoffice notepadplusplus tightvnc virtualbox wireshark -y

REM Install scapy via pip - needs Pcap (via wireshark)
pip install scapy-python3

REM Installing XAMPP
choco install wget -y
wget https://www.apachefriends.org/xampp-files/5.6.30/xampp-win32-5.6.30-1-VC11-installer.exe
start /wait xampp-win32-5.6.30-1-VC11-installer.exe
del xampp-win32-5.6.15-1-VC11-installer.exe


pause

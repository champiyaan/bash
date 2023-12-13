#!/bin/bash

# Update package list
sudo apt update

# Install apt packages
sudo apt install -y htop neofetch nmap
sudo apt install gnome-tweaks
sudo apt install nala 
sudo apt install gnome-extension-manager 
sudo apt install simplescreenrecorder
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-previews'
sudo apt install flatpak
sudo apt install virt-manager
sudo apt install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils
sudo apt install winbind
sudo apt install libqt5gui5
sudo apt install p7zip-full

# Install Winbox using Snap
sudo snap install winbox
sudo snap install code --classic
#sudo snap install remmina
sudo snap install sublime-text --classic
sudo snap install brave
sudo snap install termius-app
sudo snap install vlc
#$ flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Download and install Google Chrome
wget -O google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb

# Clean up downloaded Google Chrome package
rm google-chrome-stable_current_amd64.deb

#anydesk ..........................

# Add AnyDesk repository key to Trusted software providers list
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -

# Add the AnyDesk repository
#echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list > /dev/null

# Update APT cache
sudo apt update

# Install AnyDesk
# sudo apt install -y anydesk

#rusk desk .................................................

# Add RustDesk repository key
wget -qO - https://rustdesk.com/pgp/KEY.gpg | sudo apt-key add -

# Add the RustDesk repository
echo "deb https://rustdesk.com/deb/ all main" | sudo tee /etc/apt/sources.list.d/rustdesk.list > /dev/null

sudo apt install -y rustdesk

# Download VirtualBox package
wget https://download.virtualbox.org/virtualbox/7.0.12/virtualbox-7.0_7.0.12-159484~Ubuntu~jammy_amd64.deb

# Install the downloaded package
sudo dpkg -i virtualbox-7.0_7.0.12-159484~Ubuntu~jammy_amd64.deb

rm virtualbox-7.0_7.0.12-159484~Ubuntu~jammy_amd64.deb

# If there are dependencies not installed, you can use the following command to fix it
sudo apt-get install -f

echo "Installation completed successfully."

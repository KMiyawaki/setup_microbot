#!/bin/bash
read -p "Enter VNC password: " PASS
echo ${PASS}
sudo apt update
sudo apt install vino -y
sudo ln -s ../vino-server.service /usr/lib/systemd/user/graphical-session.target.wants
gsettings set org.gnome.Vino prompt-enabled false
gsettings set org.gnome.Vino require-encryption false
gsettings set org.gnome.Vino authentication-methods "['vnc']"
gsettings set org.gnome.Vino vnc-password $(echo -n "${PASS}"|base64)
sudo cp /etc/X11/xorg.conf /etc/X11/xorg.conf.back
sudo sh -c 'cat vnc_settings.txt>>/etc/X11/xorg.conf'
sudo reboot

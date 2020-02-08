#!/bin/bash
cd
sudo apt-get install hostapd -y
git clone https://github.com/oblique/create_ap
cd create_ap
sudo make install
# https://github.com/oblique/create_ap/issues/107#issuecomment-140786781
cd 
cd setup_microbot
sudo patch -u /usr/bin/create_ap < create_ap.patch

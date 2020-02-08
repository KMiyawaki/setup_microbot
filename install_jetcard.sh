#!/bin/bash
sudo apt-get update
sudo apt install -y python3-pip python3-pil python3-smbus python3-matplotlib cmake -y
cd
git clone https://github.com/NVIDIA-AI-IOT/jetcard.git
cd jetcard
git checkout -b jetpack_4.2.2 origin/jetpack_4.2.2
sudo /usr/bin/python3 setup.py install
read -p "Enter password: " PASS
./install.sh ${PASS}

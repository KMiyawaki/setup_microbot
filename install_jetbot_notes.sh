#!/bin/bash
cd
sudo apt install python3-smbus
git clone https://github.com/NVIDIA-AI-IOT/jetbot
cd jetbot
sudo apt-get install cmake
sudo /usr/bin/python3 setup.py install
cp -r ~/jetbot/notebooks ~/Notebooks

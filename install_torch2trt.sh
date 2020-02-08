#!/bin/bash
sudo apt-get install libprotobuf* protobuf-compiler ninja-build -y
cd
git clone https://github.com/NVIDIA-AI-IOT/torch2trt
cd torch2trt
sudo /usr/bin/python2 setup.py install --plugins
sudo /usr/bin/python3 setup.py install --plugins

#!/bin/bash
cd ~
git clone https://github.com/dusty-nv/jetson-inference
cd jetson-inference
git submodule update --init
mkdir build
cd build
cmake ../
make
# Select default deep learning models.
# Select pyTorch for pyton 2.7 only.
# Because pyTorch for pyton 3.6 has been installed by jetcard already.
sudo make install
sudo ldconfig

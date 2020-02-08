#!/bin/bash
echo "**Making workspace**"
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src/
catkin_init_workspace 
cd ..
catkin_make
cd
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc

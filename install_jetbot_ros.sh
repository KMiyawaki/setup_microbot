#!/bin/bash
sudo apt-get install ros-melodic-vision-msgs ros-melodic-image-transport ros-melodic-image-publisher -y
cd ~/catkin_ws/src
git clone https://github.com/dusty-nv/ros_deep_learning
cd ~/catkin_ws
catkin_make
cd ~/catkin_ws/src
git clone https://github.com/dusty-nv/jetbot_ros
# build the package
cd ~/catkin_ws
catkin_make

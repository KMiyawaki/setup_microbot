#!/bin/bash
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt update
sudo apt install ros-melodic-desktop-full -y
sudo rosdep init
rosdep update
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential -y
sudo apt install python-catkin-tools -y
# ROS packages
sudo apt install ros-melodic-rosemacs -y
mkdir ~/.emacs.d
touch ~/.emacs.d/init.el
{
  echo "(setq inhibit-startup-message t)"
  echo "(add-to-list 'load-path \"/opt/ros/melodic/share/emacs/site-lisp\")"
  echo ";; or whatever your install space is + \"/share/emacs/site-lisp\""
  echo "(require 'rosemacs-config)"
} >> ~/.emacs.d/init.el
sudo apt install ros-melodic-image-transport -y
sudo apt install ros-melodic-image-transport-plugins -y
sudo apt install ros-melodic-navigation -y
sudo apt install ros-melodic-joy -y
sudo apt install ros-melodic-teleop-twist-joy -y
sudo apt install ros-melodic-laser-filters -y
sudo apt install ros-melodic-slam-gmapping -y
sudo apt install ros-melodic-mouse-teleop -y
echo "**Done**"

#!/bin/bash

echo "-----------------------"
echo "Installing onto a Fresh Ubuntu"
echo "-----------------------"
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt install -y curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

echo "-----------------------"
echo "Updating Ubuntu"
echo "-----------------------"
sudo apt update
sudo apt -y upgrade
echo "-----------------------"
echo "Installing ROS Melodic"
echo "-----------------------"
sudo apt install -y ros-melodic-desktop-full
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
echo source ~/.bashrc
echo "-----------------------"
echo "Installing Dependencies"
echo "-----------------------"
sudo apt install -y python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
sudo apt install -y python-rosdep
sudo rosdep init
rosdep update
sudo apt-get install -y python-catkin-tools

sudo apt-get -y install python-catkin-pkg
sudo apt-get -y install ros-melodic-roslaunch
sudo apt-get -y install dos2unix
sudo apt-get -y install python-scipy
sudo apt-get -y install python-geopy

echo "-----------------------"
echo "Install Complete, please proceed to build steps."
echo "-----------------------"
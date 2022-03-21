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
echo "Setting Up Workspace..."
echo "-----------------------"
echo mkdir -p ~/gdp/src
cp -R  ~/install-1/src ~/gdp/src


DEPENDENCIES=""
apt-get update
rosdep update
TEMP=$(rospack list)
TEMP=$(grep -E "$AEROSTACK_WORKSPACE|UTR" <<< "$TEMP" | cut -d' ' -f1)
for p in $(echo $TEMP)
do
	echo "Calculating Dependencies for $p"
	TEMP2+=" $(echo -e $(rospack depends $p  2>/dev/null))"
done

TEMP=$(tr -s [:space:] \\n <<< $TEMP2 | sort | uniq)

TEMP=$(echo "$TEMP" | sed 's/_/-/g')
TEMP=$(echo "$TEMP" | sed 's/^/ /')
TEMP=$(echo "$TEMP" | sed "s/ / ros-$ROS_DISTRO-/g")
for p in $(echo $TEMP)
do
	echo "Checking whether $p is installed or not"
	apt-cache show $p > /dev/null 2>&1
	test $? -ne 0 || DEPENDENCIES="$DEPENDENCIES $p"
done

echo "All dependencies installed succesfully"

echo "-----------------------"
echo "Building"
echo "-----------------------"
cd gdp
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
echo source ~/.bashrc
catkin build
echo "Built succesfully"
echo "-----------------------"
echo "Executing config steps"
echo "-----------------------"
cd src/behaviour/scripts && find . -type f -print0 | xargs -0 dos2unix
chmod +x *.py
cd ~/ && source gdp/devel/setup.bash
echo "Configured Successfully"
echo "If you would like config steps added to bashrc then please run 'sudo bash gdp/src/bin/bashappend.sh'"
echo "-----------------------"
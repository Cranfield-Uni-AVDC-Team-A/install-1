#!/bin/bash

echo "-----------------------"
echo "Installing dependancies"
echo "-----------------------"
sudo apt-get -y install python-catkin-tools
sudo apt-get -y install python-catkin-pkg
sudo apt-get -y install ros-melodic-roslaunch
sudo apt-get -y install dos2unix
sudo apt-get -y install python-scipy
sudo apt-get -y install python-geopy

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
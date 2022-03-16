#!/bin/bash

#######################
BASEDIR=$PWD

if [ "$#" -eq 0 ]; then
	echo "Please input a valid .repos file path"
	exit 1;
fi
if [ ! -f "$1" ] || [[ "$1" != *.repos ]]; then
	echo "$1 is not a valid file"
	exit 1
fi

echo "=========================================="
echo "$1"
echo "=========================================="

ROS_DISTRO="melodic"
export ROS_DISTRO=$ROS_DISTRO

sudo apt-get -y install ros-$ROS_DISTRO-mavlink &>/dev/null
if [ "$?" -ne 0 ]; then
	echo $(sudo apt-get --simulate install ros-$ROS_DISTRO-mavlink) &>/dev/null
	if [ "$?" -ne 0 ]; then
		echo "Failed to accept software from packages.ros.org"
	fi
	echo "$(sudo apt-get -y install ros-$ROS_DISTRO-mavlink)"
	echo "Unable to install Aerostack ros dependencies, cancelling installation"
	exit 1
fi

if ! command -v vcs &> /dev/null; then
    echo "vcs could not be found"
	echo "installing vcs_tool..."
	sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
	sudo apt-key adv --keyserver hkp://pool.sks-keyservers.net --recv-key 0xAB17C654
	sudo apt-get update
	sudo apt-get install python3-vcstool
else 
	echo "vcs installed"
fi

# Absolute path of the aerostack workspace
AEROSTACK_WS_PATH="$HOME/workspace/ros/aerostack_catkin_ws"

# Relative path of the aerostack. The parent path is ${AEROSTACK_WS_PATH}/src
AEROSTACK_STACK_SUBPATH="aerostack_stack"


clear

echo "------------------------------------------------------"
echo "Setting Aerostack Paths"
echo "------------------------------------------------------"
AEROSTACK_WORKSPACE=$AEROSTACK_WS_PATH
AEROSTACK_STACK="$AEROSTACK_WS_PATH/src/$AEROSTACK_STACK_SUBPATH"
echo "-The Aerostack WS path is: $AEROSTACK_WORKSPACE"
echo "-The Aerostack stack path is: $AEROSTACK_STACK"

echo "------------------------------------------------------"
echo "Removing previous installs of Aerostack (If Installed)"
echo "------------------------------------------------------"
rm -rf $AEROSTACK_STACK
rm -rf $AEROSTACK_WORKSPACE
sed -i '/AEROSTACK_WORKSPACE/d' $HOME/.bashrc
sed -i '/AEROSTACK_STACK/d' $HOME/.bashrc



echo "------------------------------------------------------"
echo "Obtaining aerostack git info and root source code"
echo "------------------------------------------------------"
mkdir -p $AEROSTACK_WORKSPACE/src
mkdir -p $AEROSTACK_STACK
cd $AEROSTACK_STACK
vcs import --recursive < "$1"


echo "-------------------------------------------------------"
echo "Setting environment variables"
echo "-------------------------------------------------------"

cd $AEROSTACK_WORKSPACE
echo "export AEROSTACK_WORKSPACE=`pwd`" >> $HOME/.bashrc

cd $AEROSTACK_STACK
echo "export AEROSTACK_STACK=`pwd`" >> $HOME/.bashrc

export AEROSTACK_WORKSPACE
export AEROSTACK_STACK

echo "------------------------------------------------------"
echo "Creating the ROS Workspace"
echo "------------------------------------------------------"
source /opt/ros/$ROS_DISTRO/setup.bash
cd $AEROSTACK_WORKSPACE/src
catkin_init_workspace
cd $AEROSTACK_WORKSPACE
catkin_make

echo "-------------------------------------------------------"
echo "Sourcing the ROS Aerostack WS"
echo "-------------------------------------------------------"
. ${AEROSTACK_WORKSPACE}/devel/setup.bash

echo "-------------------------------------------------------"
echo "Installing dependencies"
echo "-------------------------------------------------------"

. "$BASEDIR"/install_dependencies.sh

echo "-------------------------------------------------------"
echo "Fixing CMakeLists.txt to be able to open QTCreator"
echo "-------------------------------------------------------"
cd $AEROSTACK_WORKSPACE/src
rm CMakeLists.txt
cp /opt/ros/$ROS_DISTRO/share/catkin/cmake/toplevel.cmake CMakeLists.txt

read -p "Do you want to include the component \"quadrotor_motion_with_mpc_control\". Its compilation may take a long time (e.g., 15 minutes in a regular computer) (y/n)?" choice
case "$choice" in 
  y|Y ) [ -f $AEROSTACK_STACK/stack/behaviors/behavior_packages/quadrotor_motion_with_mpc_control/CATKIN_IGNORE ] && rm $AEROSTACK_STACK/stack/behaviors/behavior_packages/quadrotor_motion_with_mpc_control/CATKIN_IGNORE;;
  n|N ) touch $AEROSTACK_STACK/stack/behaviors/behavior_packages/quadrotor_motion_with_mpc_control/CATKIN_IGNORE;;
  * ) echo "invalid";;
esac

echo "-------------------------------------------------------"
echo "Compiling the Aerostack"
echo "-------------------------------------------------------"
cd ${AEROSTACK_WORKSPACE}
[ ! -f "$AEROSTACK_STACK/behaviors/behavior_packages/multi_sensor_fusion" ] && touch "$AEROSTACK_STACK/behaviors/behavior_packages/multi_sensor_fusion/CATKIN_IGNORE"
catkin_make

[ -f "$AEROSTACK_STACK/behaviors/behavior_packages/multi_sensor_fusion/CATKIN_IGNORE" ] && rm "$AEROSTACK_STACK/behaviors/behavior_packages/multi_sensor_fusion/CATKIN_IGNORE"
catkin_make -j1


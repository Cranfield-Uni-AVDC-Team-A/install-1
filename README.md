
## NOT Aerostack

This fork is not the aerostack dev fork, this is the simplified version made by Nick.

This is still massively work in progress, there will be mad bugs everywhere. If you find one please let me know.

Clone the Repo:

```git clone https://github.com/Cranfield-Uni-AVDC-Team-A/install-1.git```

If you already have ubuntu and ros installed, you can check the fresh_install.sh file to see if there are any dependancies that you are missing.

Install any missing dependancies and then you can skip to the build steps.

To install onto a fresh Ubuntu:

```cd install-1 && tr -d '\r' < fresh_install.sh>unix_fresh_install.sh```

``` sudo bash unix_fresh_install.sh```


Build Steps: 
{

```mkdir -p ~/gdp/src && cd ~/gdp && echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc```

```source ~/.bashrc```

```catkin build```

```cp -R  ~/install-1/src ~/gdp && catkin build && cd ~```

}

Config Steps (For when you open a New Terminal): 
{

If you have restarted your computer, do the bellow two lines additionally:

```sudo sh -c "echo 0 >/proc/sys/net/ipv4/icmp_echo_ignore_broadcasts"```

```sudo service procps restart```

Otherwise only:

```cd gdp/src/behaviour/scripts && find . -type f -print0 | xargs -0 dos2unix```

```chmod +x *.py```

```cd ~/ && sudo rosdep fix-permissions && source gdp/devel/setup.bash```

}

Run Steps:
{

```roslaunch behaviour main_launch.launch```

}

Test Steps (In a New Terminal...):
{

```source gdp/devel/setup.bash```

```rostopic echo Members```

}

You should see an output with swarm drone member heartbeats.

If you want the non-restart config steps to be added to your .bashrc file so that it loads in every new terminal then use:
In a New Terminal...

```sudo bash gdp/src/bin/bashappend.sh```


To check it's worked, either manually check your bashrc file or open a new terminal and check that the output is printed at the top.


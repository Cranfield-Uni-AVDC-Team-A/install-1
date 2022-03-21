
## NOT Aerostack

This fork is not the aerostack dev fork, this is the simplified version made by Nick.

This is still massively work in progress, there will be mad bugs everywhere. If you find one please let me know.

To use the code:
If you don't have ros already installed:

```sudo apt install ros-kinetic-desktop-full```

```sudo apt-get install python-catkin-tools```

Clone the repo


```$ git clone https://github.com/Cranfield-Uni-AVDC-Team-A/install-1.git```

Extract "gdp" and "install_dependencies.sh" to your user folder.

And run:

```tr -d '\r' < install_dependencies.sh>unix_install_dependencies.sh```

``` sudo bash unix_install_dependencies.sh```

To test the install worked:

Config Steps: 
{

```cd ~/ && cd gdp/src/behaviour/scripts && find . -type f -print0 | xargs -0 dos2unix```

```chmod +x *.py```

```cd ~/ && source gdp/devel/setup.bash```

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

If you want the config steps to be added to your .bashrc file so that it loads in every new terminal then use:
In a New Terminal...

```sudo bash gdp/src/bin/bashappend.sh```


To check it's worked, either manually check your bashrc file or open a new terminal and check that the output is printed at the top.

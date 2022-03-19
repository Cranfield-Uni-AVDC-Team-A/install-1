
## NOT Aerostack

This fork is not the aerostack dev fork, this is the simplified version made by Nick.

This is still massively work in progress, there will be mad bugs everywhere. If you find one please let me know.

To use the code:
Clone the repo


```mkdir -p ~/gdp/src && cd gdp && catkin build```


Then copy the src folder from the cloned gdp folder to replace the one in the gdp dir you have just made.

In the gdp dir run ```catkin build``` again.

Some required dependancies:

```sudo apt-get install dos2unix```

```sudo apt-get install python3-scipy```

```sudo apt-get install -y python-geopy```

To test the install worked:

Config Steps: 
{

```cd src/behaviour/scripts && find . -type f -print0 | xargs -0 dos2unix```

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

```echo Members```

}

You should see an output with swarm drone member heartbeats.

If you want the config steps to be added to your .bashrc file so that it loads in every new terminal then use:
In a New Terminal...

```sudo bash gdp/src/bin/bashappend.sh```


To check it's worked, either manually check your bashrc file or open a new terminal and check that the output is printed at the top.



## Aerostack
Please visit the [Aerostack Wiki](https://github.com/aerostack/install/wiki) for a complete documentation.

To install our customized AeroStack Core Code, please follow the steps below:

1. Change directory where the application is going to be downloaded (for example, the directory $HOME/Desktop):\
```$ cd $HOME/Desktop```

2. Download our customized installation repo:\
```$ git clone https://github.com/Cranfield-Uni-AVDC-Team-A/install.git```

1. Change the directory to the installation repo:\
```$ cd install```

4. Execute installation command. The first argument of this command is the name of the file full_aerostack.repos (with the absolute path) that contains the list of repositories used by the application.\
``` $ ./install_from_source.sh $(Current_path_dir)/full_aerostack.repos```

This command installs the Aerostack workspace in a default directory (the default directory is $HOME).\
If you want to install the code in a different directory, you can write the installation command including the name of the directory (with the absolute path) as a second argument.\

For example, the following command installs the Aerostack workspace in the directory /$HOME/develop:
``` $ ./install_from_source.sh $(Current_path_dir)/full_aerostack.repos $HOME/develop```

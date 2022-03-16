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

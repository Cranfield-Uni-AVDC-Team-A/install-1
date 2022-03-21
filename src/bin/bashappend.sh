# Appending Script
echo '' >> ~/.bashrc 
echo 'echo "##############"' >> ~/.bashrc 
echo 'echo echo "Cranfield GDP Group A - Drone Swarm Software Launch"' >> ~/.bashrc 
echo 'echo "##############"' >> ~/.bashrc 
echo 'echo "######## CAUTION: THIS IS A TEST BUILD - DO NOT LIVE USE ########"' >> ~/.bashrc 
echo 'echo "##############"' >> ~/.bashrc 
echo 'cd gdp' >> ~/.bashrc 
echo 'echo "Initalising..."' >> ~/.bashrc 
echo 'echo "##############"' >> ~/.bashrc 
echo 'echo "Converting Dos2Unix..."' >> ~/.bashrc 
echo 'cd src/behaviour/scripts' >> ~/.bashrc 
echo 'find . -type f -print0 | xargs -0 dos2unix' >> ~/.bashrc 
echo 'echo "Marking all files as executable..."' >> ~/.bashrc 
echo 'chmod +x *.py' >> ~/.bashrc 
echo 'echo "##############"' >> ~/.bashrc 
echo 'echo "Initalisation Complete"' >> ~/.bashrc 
echo 'echo "##############"' >> ~/.bashrc 
echo 'echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"' >> ~/.bashrc 
echo 'echo "DEMO VERSION - DO NOT LIVE USE"' >> ~/.bashrc 
echo 'echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"' >> ~/.bashrc 
echo 'echo "Returning to Terminal:..."' >> ~/.bashrc 
echo 'cd ~/' >> ~/.bashrc 
echo 'source gdp/devel/setup.bash' >> ~/.bashrc 
echo 'echo "##############"' >> ~/.bashrc 
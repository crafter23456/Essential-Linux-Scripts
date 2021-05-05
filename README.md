# Essential-Linux-Scripts
A few sinple scripts to automate your workflow

With the script.sh you can start the other script

## Download the scripts / get the repo

**You must be logged in as root or sudo !**

Without git, use the following to download this repository

    apt install wget unzip
    cd && wget https://github.com/crafter23456/Essential-Linux-Scripts/archive/refs/heads/main.zip && unzip main.zip && rm main.zip && mv cd /root/main cd /root/scripts

If you have git installed, use 

    git clone https://github.com/crafter23456/Essential-Linux-Scripts.git

## Execute the script

Simply type

    cd /root/scripts && ./script.sh
    
You start the main script, with which you can execute the other scripts.

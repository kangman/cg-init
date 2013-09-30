#!/bin/bash

echo 'ubuntu ALL=NOPASSWD:ALL' > ubuntu
echo 'ubuntu' | sudo -S chmod 440 ubuntu
echo 'ubuntu' | sudo -S chown root:root ubuntu
echo 'ubuntu' | sudo -S mv ubuntu /etc/sudoers.d/

sleep 30;
sudo apt-get -y update;
sudo apt-get install -y git puppet zip virtualbox-guest-additions-iso;

#Language specific configurations can be included below
#sudo ./java-preseed/base.sh
#sudo ./python-preseed/base.sh
#sudo ./php-preseed/base.sh

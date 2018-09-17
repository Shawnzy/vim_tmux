#!/usr/bin/env bash

#git config
read -p 'What is your git username: ' uservar
read -p 'What is your email: ' emailvar
echo
echo Thankyou $uservar, your git is now configured
git config --global user.name "$uservar"
git config --global user.email $emailvar
git remote add upstream https://github.com/bigdatabr/BIC.git

# Get rid of error
sudo apt-get install language-pack-pt

#Install python
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py
sudo rm get-pip.py
sudo apt-get update --fix-missing
sudo apt-get install python3-dev # For Python 3
sudo apt-get install libpq-dev

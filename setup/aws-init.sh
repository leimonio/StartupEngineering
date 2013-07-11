#!/bin/bash

#installing git and heroku
sudo apt-get install -y git-core
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

#installing python and node.js
sudo apt-get install -y python-software-properties python g++ make
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install -y nodejs

echo "Just Installed the following software:"
echo "-- git: "
git --version
echo "-- heroku: "
heroku --version
echo "-- python: "
python --version
echo "-- npm: "
npm --version
echo "-- Node: "
node --version

#aliases
alias ll="ls -alrth"

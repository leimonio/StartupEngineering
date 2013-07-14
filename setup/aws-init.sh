#!/bin/bash

#installing git and heroku
sudo apt-get install -y git-core
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

#installing python and node.js (+ some libs)
sudo apt-get install -y python-software-properties python g++ make
sudo apt-add-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install -y nodejs
npm install cheerio
npm install commander

#installing screenrc and emacs and REPL and jshint
wget spark-public.s3.amazonaws.com/startup/code/screenrc -O .screenrc
sudo apt-add-repository -y ppa:cassou/emacs
sudo apt-get update
sudo apt-get install -y emacs24 emacs24-el emacs24-common-non-dfsg

git clone https://github.com/startup-class/dotfiles.git
ln -sb dotfiles/.screenrc .
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
ln -sb dotfiles/.bashrc_custom .
mv .emacs.d .emacs.d~
ln -s dotfiles/.emacs.d .

npm install -g jshint


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
echo "-- ScreenRC: "
screen --version
echo "-- Emacs: "
emacs --version

#aliases
alias ll="ls -alrth"

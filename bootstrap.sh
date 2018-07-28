#!/usr/bin/env bash
sudo apt-get update
sudo apt-get -y install python-pip
if [ -z ${TRAVIS+x} ]; then
  curl -fsSL 'https://sks-keyservers.net/pks/lookup?op=get&search=0xee6d536cf7dc86e2d7d56f59a178ac6c6238f52e' | sudo apt-key add -
  sudo add-apt-repository "deb https://packages.docker.com/1.12/apt/repo/ ubuntu-$(lsb_release -cs) main"
  sudo apt-get update
  sudo apt-get -y install docker-engine
  sudo usermod -a -G docker $USER
fi
sudo -H pip install virtualenv
virtualenv ~/.venv --no-site-packages
source ~/.venv/bin/activate
pip install ansible==2.6.0
pip install molecule==1.25.1
pip install testinfra==1.7.1 --upgrade
pip install docker

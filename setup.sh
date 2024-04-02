#!/bin/bash

sudo locale-gen ja_JP.UTF-8
echo export LANG=ja_JP.UTF-8 >> ~/.profile
source ~/.profile

sudo timedatectl set-timezone Asia/Tokyo
date

# vim
sudo apt-get install vim

# zsh
sudo apt-get install zsh 
chsh -s $(which zsh)

# zip
sudo apt-get install zip unzip

# git
sudo apt-get install git
git config --global user.name "ytr0"
git config --global user.email yu20@iamas.ac.jp
git config --global core.editor "vim"
git config -l

# tailscale
curl -fsSL https://tailscale.com/install.sh | sh

# docker
# sudo curl -fsSL https://get.docker.com/ | sh
# sudo usermod -aG docker vagrant
# compose_version=`curl -s https://api.github.com/repos/docker/compose/releases/latest | \
#   grep tag_name | \
#   sed -e 's/[^0-9\.]//g'`
# echo The latest docker-compose version is $compose_version.
# curl -L https://github.com/docker/compose/releases/download/$compose_version/docker-compose-`uname -s`-`uname -m` > docker-compose
# sudo mv docker-compose /usr/local/bin/docker-compose
# sudo chmod +x /usr/local/bin/docker-compose
# echo $(docker-compose --version)
# sudo service docker start

# touch docker-compose.yml
# touch Dockerfile
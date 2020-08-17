#!/usr/bin/env bash

source /app/vagrant/provision/common.sh

#== Import script args ==

timezone=$(echo "$1")

#== Provision script ==

info "Provision-script user: `whoami`"

export DEBIAN_FRONTEND=noninteractive

info "Configure timezone"
timedatectl set-timezone ${timezone} --no-ask-password


info "Install additional software"
sudo apt-get install  -y \
    apt-transport-https \
    ca-certificates \
    curl \
    aufs-tools \
    cgroupfs-mount \
    libltdl7 \
    pigz \
    libsystemd0 \
    gnupg-agent \
	python-dev \
    software-properties-common \
    zip gzip tar

info "Add Docker’s official GPG key"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

info "Install docker software"
sudo add-apt-repository  "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable"


info "Update OS software"
sudo apt-get update
#sudo apt-get upgrade -y

#info "Update the apt package index."
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

#info "Download: containerd"
#curl -k -O -L https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/containerd.io_1.2.6-3_amd64.deb

#info "Download: docker-ce"
#curl -k -O -L https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/docker-ce_19.03.8~3-0~ubuntu-xenial_amd64.deb

#info "Download: docker-ce-cli"
#curl -k -O -L https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/docker-ce-cli_19.03.8~3-0~ubuntu-xenial_amd64.deb

#info "Install Packages"
#sudo dpkg -i /app/vagrant/deb/docker-ce-cli_19.03.8_3-0_ubuntu-xenial_amd64.deb
#sudo dpkg -i /app/vagrant/deb/containerd.io_1.2.6-3_amd64.deb
#sudo dpkg -i /app/vagrant/deb/docker-ce_19.03.8_3-0_ubuntu-xenial_amd64.deb

#info "Download and install: containerd"
#curl -k -O -L https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/containerd.io_1.2.6-3_amd64.deb
#sudo apt install ./containerd.io_1.2.13-1_amd64.deb

#info "Download and install: docker-ce"
#curl -k -O -L https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/docker-ce_19.03.8~3-0~ubuntu-xenial_amd64.deb
#sudo apt install ./docker-ce_19.03.8~3-0~ubuntu-xenial_amd64.deb

#info "Download and install: docker-ce-cli"
#curl -k -O -L https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/docker-ce-cli_19.03.8~3-0~ubuntu-xenial_amd64.deb
#sudo apt install ./docker-ce-cli_19.03.8~3-0~ubuntu-xenial_amd64.deb

info "Check docker status"
sudo systemctl status docker

info "Install Compose on Linux systems"
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

info "Check docker-compose version"
sudo docker-compose --version



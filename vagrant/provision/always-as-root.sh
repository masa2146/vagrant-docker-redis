#!/usr/bin/env bash

source /app/vagrant/provision/common.sh

#== Provision script ==

info "Provision-script user: `whoami`"

info "CAP Project Copy : /CAP/"

source /app/vagrant/provision/copyService-new.sh $1


cd /opt/edis

info "Docker build"
docker-compose build

info "Install docker network"
sudo  docker network create dockernet --subnet=192.168.0.0/24 --gateway=192.168.0.1  || true


info "Restart docker"

sudo  docker-compose down --remove-orphans;
sudo  docker-compose up -d

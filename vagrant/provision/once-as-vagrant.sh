#!/usr/bin/env bash

source /app/vagrant/provision/common.sh

#== Import script args ==

github_token=$(echo "$1")

#== Provision script ==

info "Provision-script user: `whoami`"

info "Create bash-alias 'CAP' for vagrant user"
echo 'alias app="cd /CAP"' | tee /home/vagrant/.bash_aliases

info "Enabling colorized prompt for guest console"
sed -i "s/#force_color_prompt=yes/force_color_prompt=yes/" /home/vagrant/.bashrc

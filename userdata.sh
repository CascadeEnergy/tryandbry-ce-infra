#!/bin/bash

##### as root
## working directory
mkdir -p /var/cascade
chown ec2-user /var/cascade

## git
dnf install -y git

## gh cli
type -p yum-config-manager >/dev/null || yum install yum-utils
yum-config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
yum install -y gh

##### change to ec2-user
sudo -i -u ec2-user bash << EOF
## nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

## enable use of nvm in current session
source /home/ec2-user/.bashrc

## install node
nvm install 18

## configure npm
npm config set legacy-peer-deps=true

## configure git
echo .DS_Store > ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
git config --global user.name "Bryan Kao"
git config --global user.email "bryan.kao@cascadeenergy.com"
EOF

#!/bin/bash

## working directory
sudo mkdir -p /var/cascade
sudo chown ec2-user /var/cascade

## git
sudo dnf install -y git

## gh cli
type -p yum-config-manager >/dev/null || sudo yum install yum-utils
sudo yum-config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
sudo yum install gh

## nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

## enable use of nvm in current session
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## install node
nvm install 18
npm config set legacy-peer-deps=true

## configure git
echo .DS_Store > ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
git config --global user.name Bryan Kao
git config --global user.email bryan.kao@cascadeenergy.com
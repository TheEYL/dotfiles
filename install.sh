#!/bin/sh
#TODO: check whether these have already been installed.
#install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

mkdir $HOME/.nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#install node
nvm install node
nvm install --lts
nvm install 4.9.1
nvm install 8.11.3
nvm use 8.11.3


#install development tools
sudo apt install gcc g++ make

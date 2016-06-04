# https://github.com/Malnacid0

###############################################
# Install nvm
# https://github.com/creationix/nvm
###############################################

sudo apt-get install -y git-core curl build-essential

# Check if env/ directory exists
if [ -d /vagrant/env/ ]; then
  for path in /vagrant/env/*; do
    name=${path##*/}
    # Do not include dotfiles or empty directory (*)
    if [[ "$name" != "*" ]] && [[ ${name:0:1} != "." ]]; then
      echo "$name=$(cat $path)"
      echo "export $name=$(cat $path)" >> /home/vagrant/.bashrc
    fi
  done
fi

echo "export NODE_ENV=development" >> /home/vagrant/.bashrc
echo "\ncd /vagrant" >> /home/vagrant/.bashrc
export HOME=/home/vagrant

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash

echo "source ~/.nvm/nvm.sh" >> /home/vagrant/.bashrc
source /home/vagrant/.nvm/nvm.sh

###############################################
# Install nodejs 4.2
# https://github.com/nodejs/node
#   Also you can install other nodejs versions
#   changing number version ( nvm install 5.0)
###############################################
nvm install 4.2
nvm use 4.2
nvm alias default 4.2
n=$(which node);n=${n%/bin/node}; chmod -R 755 $n/bin/*; sudo cp -r $n/{bin,lib,share} /usr/local


###############################################
# Install packages
# https://github.com/remy/nodemon
#   You can quit or add whatever you need
###############################################
npm install -g nodemon

 #!/usr/bin/env bash
sudo apt-get update
sudo apt-get install build-essential libssl-dev vim curl git tmux phantomjs -y

#################################
# Install Ruby from RVM
echo 'Install Ruby from RVM ----------------------------------'
#################################
curl -sSL https://get.rvm.io | bash -s stable --ruby
# source the rvm scripts
# source ~/.profile
source /home/vagrant/.rvm/scripts/rvm
# source /usr/local/rvm/scripts/rvm
rvm use --install 1.9.3
# echo 'rvm use 1.9.3' >> ~/.profile

#################################
# Install Node Using NVM
echo 'Install Node Using NVM ----------------------------------'
#################################
# sudo chmod 777 ~/.profile
curl https://raw.githubusercontent.com/creationix/nvm/v0.17.3/install.sh | sh
# source ~/.profile
source /home/vagrant/.nvm/nvm.sh

# install the latest v0.10.x stable release of node
echo 'install the latest v0.10.x stable release of node ----------------------------------'
nvm install 0.10
nvm use 0.10
echo 'nvm use 0.10' >> ~/.profile

echo 'nvm' && nvm --version
echo 'node' && node -v
echo 'npm' && npm -v

#################################
# Others
#################################

# Install GruntJs
echo 'install grunt-cli ----------------------------------'
npm install -g grunt-cli

# Install Bower
echo 'install bower ----------------------------------'
npm install -g bower
# Install Yeoman
echo 'install yo ----------------------------------'
npm install -g yo

# Gem
echo 'install sass ----------------------------------'
sudo gem install sass
echo 'install compass ----------------------------------'
sudo gem install compass

#################################
# For AngularJS
#################################

# npm install -g karma
# npm install -g karma-cli
# npm install -g karma-jasmine

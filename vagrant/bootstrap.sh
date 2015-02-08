# install nodejs git vim
export DEBIAN_FRONTEND=noninteractive
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 && echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
curl -sL https://deb.nodesource.com/setup | bash -
apt-get update && apt-get install --no-install-recommends -y nodejs git vim mongodb-org

# change global node module directory
echo prefix = /home/vagrant/.node >> /home/vagrant/.npmrc
echo "export PATH=\$PATH:/home/vagrant/.node/bin" >> /home/vagrant/.bashrc
echo "export NODE_PATH=\$NODE_PATH:/home/vagrant/.node/lib/node_modules" >> /home/vagrant/.bashrc
source /home/vagrant/.bashrc

# install yo grunt bower generator-meanjs as non-root user
su -c "npm install -g yo grunt-cli bower generator-meanjs" vagrant

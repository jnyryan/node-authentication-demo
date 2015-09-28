#!/bin/bash

# add latest nodejs build repo
add-apt-repository ppa:chris-lea/node.js
# add mongo key server
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list

apt-get update
# other installs
apt-get install -y make curl git unzip

#####################
# Install nginx
echo Installing NGIX
apt-get install -y nginx

#####################
echo Update NGINX
#cp /app/etc/nginx/nginx.conf /etc/nginx/sites-available/patchapps.conf
rm /etc/nginx/sites-enabled/default
ln -sf /app/nginx/nginx.conf /etc/nginx/sites-enabled/patchapps.conf
ln -sf /etc/nginx/sites-available/patchapps.conf /etc/nginx/sites-enabled/patchapps.conf
service nginx restart

#####################
# Install nodejs
echo Installing NODE.JS
apt-get install -y nodejs

#####################
# Install nodejs
echo Installing MongoDB
apt-get install -y mongodb-org

echo done

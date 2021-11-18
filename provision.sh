#!/bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install nginx -y

sudo apt-get install python-software-properties -y
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y

sudo apt-get upgrade -y


sudo echo 'export DB_HOST="mongodb://54.77.70.61:27017/posts"' >> ~/.bashrc # database public ip
source ~/.bashrc
echo "SOURCE COMMAND RUN"
printenv DB_HOST
sudo rm /etc/nginx/sites-available/default
sudo cp /home/ubuntu/bootcamp_CICD/environment/nginx.default /etc/nginx/sites-available/default
echo "restarting nginx"
sudo service nginx restart
sudo systemctl enable nginx

echo "Attempting npm install steps"
cd ~/DevOpsBootcamp_Jenkins/app
sudo apt-get install npm -y
sudo npm install
sudo npm install express
echo "npm install run successfully"
node ~/DevOpsBootcamp_Jenkins/app/seeds/seed.js

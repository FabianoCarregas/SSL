#!/bin/bash

echo "Updanting server"
apt-get update
apt-get upgrade -y

apt-get install apache2 -y
apt-get install unzip -y

echo "Download and coping files"
cd/tmp
wget https://github.com/FabianoCarregas/captcha/archive/refs/heads/main.zip
unzip main.zip
cd captcha-main
cp -R * /var/www/html/



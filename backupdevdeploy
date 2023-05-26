#!/bin/bash


## Description : To deploy one of the app on the server the devs&qateam follow a document in confluence a script The script writtenbelow has been made to automate that. ##

## unzip helps to unarchive zip files
## wget helps to download files using its URL
## httpd is the Apache package


echo "Begining automation"

yum update -y

echo "Installing all packages"

yum install unzip wget httpd -y
wget https://github.com/utrains/static-resume/archive/refs/heads/main.zip
unzip main.zip
rm -rf /var/www/html/*
cp -r static-resume-main/iPortfolio/* /var/www/html/
systemctl start httpd
systemctl enable httpd
echo "Configuration is done"

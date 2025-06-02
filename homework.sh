#!/bin/bash

function kpop() {
sudo useradd jenny
sudo useradd rose
sudo useradd lisa
sudo useradd jisoo
sudo groupadd blackpink

sudo usermod -a -G blackpink jenny
sudo usermod -a -G blackpink rose
sudo usermod -a -G blackpink lisa
sudo usermod -a -G blackpink jisoo

}

function wordpress(){
sudo dnf install wget php-mysqlnd httpd php-fpm php-mysqli mariadb105-server php-json php php-devel -y
wget https://wordpress.org/latest.tar.gz
tar zxf latest.tar.gz
sudo mv wordpress/* /var/www/html
sudo chown -R apache:apache /var/www/html
sudo chmod -R 755 /var/www/html
sudo systemctl start httpd
sudo systemctl enable httpd

}

function binary(){
sudo yum install tree -y
sudo yum install -y yum-utils shadow-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform

}


kpop
wordpress
binary

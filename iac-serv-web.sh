# /usr/bin/env bash

echo "Atualizando server..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install zip unzip -y
apt-get install wget -y


echo "Realizando download e copiando arquivos da aplicação..."
cd /home/mrb/Downloads

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main
cp -R . /var/www/html/


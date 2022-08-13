#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y

echo "Instalando o apache2..."
apt-get install apache2 -y

echo "Instalando o unzip..."
apt-get install unzip -y

echo "Baixando a aplicação para /tmp..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando a aplicação..."
unzip main.zip

echo "Copiando os arquivos da aplicação no diretório padrão do apache..."
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Fim!"

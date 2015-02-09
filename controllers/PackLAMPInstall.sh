# Pacote de Desenvolvimento WEB (LAMP)
echo "Iniciando o instalador do Apache...";
sh ApacheInstall.sh;

echo "Iniciando o instalador do MySQL...";
sh MysqlInstall.sh;

echo "Iniciando o instalador do PHP...";
sh PhpInstall.sh;

echo "Instalando extenção libapache2-mod-php5...";
sudo apt-get install libapache2-mod-php5;

echo "Instalando extenção php5-mysql...";
sudo apt-get install php5-mysql;

#Criando grupo de usuarios "Desenvolvedor Web"
sudo groupadd Desenvolvedor_Web;
sudo adduser $(whoami) Desenvolvedor_Web;
sudo chgrp -R Desenvolvedor_Web /var/www/
sudo chmod -R g+rwx /var/www/;



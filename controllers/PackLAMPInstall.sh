# Pacote de Desenvolvimento WEB (LAMP)
echo "Iniciando o instalador do Apache...";
sh controllers/ApacheInstall.sh;

echo "Iniciando o instalador do MySQL...";
sh controllers/MysqlInstall.sh;

echo "Iniciando o instalador do PHP...";
sh controllers/PhpInstall.sh;

echo "Instalando extenção libapache2-mod-php5...";
sudo apt-get -y install libapache2-mod-php5;

echo "Instalando extenção php5-mysql...";
sudo apt-get -y install php5-mysql;

#Criando grupo de usuarios "Desenvolvedor Web"
sudo groupadd Desenvolvedor_Web;
sudo adduser $(whoami) Desenvolvedor_Web;
sudo chgrp -R Desenvolvedor_Web /var/www/
sudo chmod -R g+rwx /var/www/;
# tem q usar umasck 
sudo umasck 003 /var/www/;
sudo chmod -R g+s /var/www/;

sudo sh -c "echo '<?php phpinfo();?>' >> /var/www/html/phpInfo.php";

xdg-open http://localhost/phpInfo.php



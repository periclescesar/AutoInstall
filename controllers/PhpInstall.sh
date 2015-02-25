# php5 Install
echo "\n\n\tAdicionando PPA...";
sudo add-apt-repository -y ppa:ondrej/php5-5.6;

echo "\n\n\tAtualizando lista...";
sudo apt-get update;

echo "\n\n\tInstalando Dependências...";
sudo apt-get -y install python-software-properties;

echo "\n\n\tInstalando o PHP5.6...";
sudo apt-get update;
sudo apt-get -y install php5 php5-cgi php5-curl php5-cli php5-dev php5-mcrypt php5-curl php5-gd;

# mensagens finais
cd /tmp
wget -O php.png http://thomasborzecki.ca/content/tutorials/images/php-logo.png;



isInstall=$(sudo dpkg -l | grep -c "php5");
if [ $isInstall -ge 1 ]; then
	echo "\n\n\tInstalação finalizada com sucesso!\n\n";
	notify-send -u normal -i /tmp/php.png 'PHP 5.6' 'Instalado Com Sucesso!'
else
	echo "\n\n\tErro na Instalação!\n\n";
	notify-send -u normal -i /tmp/php.png 'PHP 5.6' 'Erro na Instalação!'
fi 

# Limpando Cache
rm php.png;

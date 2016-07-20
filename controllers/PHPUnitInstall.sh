# PHPUnit Install
cd /tmp
echo "\n\n\tInstalando dependências Xdebug...";
sudo apt-get install -y php5-xdebug;

echo "\n\n\tInstalando o PHPUnit...";
wget https://phar.phpunit.de/phpunit.phar
sudo chgrp Desenvolvedor_Web phpunit.phar
sudo chmod ug+x phpunit.phar
sudo mv phpunit.phar /usr/local/bin/phpunit

# mensagens finais

wget -O php.png http://dextructables.com/wp-content/uploads/phpunit.png;

isInstall=$(sudo ls /usr/local/bin | grep -c "phpunit");
if [ $isInstall -ge 1 ]; then
	echo "\n\n\tInstalação finalizada com sucesso!\n\n";
	notify-send -u normal -i /tmp/php.png 'PHPUnit' 'Instalado Com Sucesso!'
else
	echo "\n\n\tErro na Instalação!\n\n";
	notify-send -u normal -i /tmp/php.png 'PHPUnit' 'Erro na Instalação!'
fi 

# Limpando Cache
rm php.png;



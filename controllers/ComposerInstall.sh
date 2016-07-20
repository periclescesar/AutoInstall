# Composer Install

cd /tmp
echo "\n\n\tInstalando o Composer...";
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
sudo chgrp Desenvolvedor_Web /usr/local/bin/composer
sudo chmod ug+rx /usr/local/bin/composer

# mensagens finais

wget -O comp.png https://getcomposer.org/img/logo-composer-transparent.png;

isInstall=$(sudo ls /usr/local/bin | grep -c "composer");
if [ $isInstall -ge 1 ]; then
	echo "\n\n\tInstalação finalizada com sucesso!\n\n";
	notify-send -u normal -i /tmp/comp.png 'Composer' 'Instalado Com Sucesso!'
else
	echo "\n\n\tErro na Instalação!\n\n";
	notify-send -u normal -i /tmp/comp.png 'Composer' 'Erro na Instalação!'
fi 

# Limpando Cache
rm comp.png;

# Apache2 Install
sudo apt-get update;
echo "\n\n\tInstalando o Apache2...";
sudo apt-get install apache2;

# mensagens finais
cd /tmp
wget -O apache.png http://ubuntuserverguide.com/wp-content/uploads/2012/10/apache-logo.png;

configAmbi() {


	notify-send -u normal -i /tmp/mysql.png 'Apache2' 'Ambiente configurado!'
}

isInstall=$(sudo dpkg -l | grep -c "apache2");
if [ $isInstall -ge 1 ]; then
	echo "\n\n\tInstalação finalizada com sucesso!\n\n";
	notify-send -u normal -i /tmp/apache.png 'Apache2' 'Instalado Com Sucesso!'
	configAmbi;
else
	echo "\n\n\tErro na Instalação!\n\n";
	notify-send -u normal -i /tmp/apache.png 'Apache2' 'Erro na Instalação!'
fi 

# Limpando Cache
rm apache.png;

# GoogleTest Install
echo "\n\n\tInstalando o GoogleTest...";
sudo apt-get update;
#sudo apt-get -y install libgtest-dev;

# mensagens finais
cd /tmp
wget -O gt.jpg http://rebelbox.com/wp-content/uploads/2013/07/c-logo.jpg;



isInstall=$(sudo dpkg -l | grep -c "libgtest-dev");
if [ $isInstall -ge 1 ]; then
	echo "\n\n\tInstalação finalizada com sucesso!\n\n";
	notify-send -u normal -i /tmp/gt.jpg 'GoogleTest' 'Instalado Com Sucesso!'
else
	echo "\n\n\tErro na Instalação!\n\n";
	notify-send -u normal -i /tmp/gt.jpg 'GoogleTest' 'Erro na Instalação!'
fi 

# Limpando Cache
rm gt.jpg;

# FileZilla Install
sudo apt-get update;
sudo apt-get -y install filezilla;

# mensagens finais
cd /tmp
wget -O file.png http://upload.wikimedia.org/wikipedia/commons/thumb/0/01/FileZilla_logo.svg/380px-FileZilla_logo.svg.png;



isInstall=$(sudo dpkg -l | grep -c "filezilla");
if [ $isInstall -ge 1 ]; then
	echo "\n\n\tInstalação finalizada com sucesso!\n\n";
	notify-send -u normal -i /tmp/file.png 'Fileilla' 'Instalado Com Sucesso!'
else
	echo "\n\n\tErro na Instalação!\n\n";
	notify-send -u normal -i /tmp/file.png 'FileZilla' 'Erro na Instalação!'
fi 

# Limpando Cache
rm file.png;

# Eclipse Install
echo "\n\n\tInstalando o Eclipse...";
sudo apt-get update;
sudo apt-get install -y eclipse eclipse-cdt;

# mensagens finais
cd /tmp
wget -O eclipse.png http://upload.wikimedia.org/wikipedia/commons/f/fc/Vista-eclipse.png;



isInstall=$(sudo dpkg -l | grep -c "eclipse");
if [ $isInstall -ge 1 ]; then
	echo "\n\n\tInstalação finalizada com sucesso!\n\n";
	notify-send -u normal -i /tmp/eclipse.png 'Eclipse' 'Instalado Com Sucesso!'
else
	echo "\n\n\tErro na Instalação!\n\n";
	notify-send -u normal -i /tmp/eclipse.png 'Eclipse' 'Erro na Instalação!'
fi 

# Limpando Cache
rm eclipse.png;

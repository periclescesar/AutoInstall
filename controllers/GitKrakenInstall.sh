#GitKraken install


#Download da Ultima Versão
cd /tmp;
echo "Baixando a ultima versão...";
wget -c https://release.gitkraken.com/linux/gitkraken-amd64.deb;

echo "\n\n\tInstalando GitKraken...\n\n";
sudo dpkg -i gitkraken-amd64.deb;


wget -O gitkraken.png http://www.macupdate.com/images/icons256/56930.png;

isInstall=$(sudo dpkg -l | grep -c "gitkraken");
if [ $isInstall -ge 1 ]; then
	echo "\n\n\tInstalação finalizada com sucesso!\n\n";
	notify-send -u normal -i /tmp/gitkraken.png 'Instalação Finalizada' 'GitKraken instalado'
	
else
	echo "\n\n\tErro na Instalação!\n\n";
	notify-send -u normal -i /tmp/gitkraken.png 'Instalação Finalizada' 'Erro na instlação'
fi 

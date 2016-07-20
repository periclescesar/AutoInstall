#Cobalt2 install

#Download da Ultima Versão
cd /tmp;

echo "Baixando a ultima versão...";
wget -c https://raw.githubusercontent.com/wesbos/Cobalt2-iterm/master/cobalt2.zsh-theme;


echo "\n\n\tInstalando o tema...\n\n";
mv cobalt2.zsh-theme ~/.oh-my-zsh/themes/;

wget -O ohmyzsh.png http://ohmyz.sh/img/OMZLogo_BnW.png;

isInstall=$(ls ~/.oh-my-zsh/themes/ | grep -c "cobalt2.zsh-theme");
if [ $isInstall -ge 1 ]; then
	echo "\n\n\tInstalação finalizada com sucesso!\n\n";
	notify-send -u normal -i /tmp/ohmyzsh.png 'Instalação Finalizada' 'Cobalt2 instalado';
	cd -;
	sh controllers/PowerLineInstall.sh;
	
else
	echo "\n\n\tErro na Instalação!\n\n";
	notify-send -u normal -i /tmp/ohmyzsh.png 'Instalação Finalizada' 'Erro na instlação';
fi 

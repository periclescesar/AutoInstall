#Oh My Zsh install

#Download da Ultima Versão
cd /tmp;

echo "\n\n\tInstalando Zsh...\n\n";
sudo apt-get install zsh -y;

echo "\n\n\tInstalando Oh My Zsh...\n\n";
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"


wget -O ohmyzsh.png http://ohmyz.sh/img/OMZLogo_BnW.png;

isInstall=$(ls ~/ -al | grep -c ".oh-my-zsh");
if [ $isInstall -ge 1 ]; then
	echo "\n\n\tInstalação finalizada com sucesso!\n\n";
	notify-send -u normal -i /tmp/ohmyzsh.png 'Instalação Finalizada' 'Oh My Zsh instalado';
	cd -;
	sh controllers/Cobalt2Install.sh;
	chsh -s /bin/zsh;
	
else
	echo "\n\n\tErro na Instalação!\n\n";
	notify-send -u normal -i /tmp/ohmyzsh.png 'Instalação Finalizada' 'Erro na instlação';
fi 

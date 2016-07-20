#Git-flow install
echo "\n\n\tInstalando Git-flow\n\n";
sudo apt-get install git-flow -y;

cd /tmp;
wget -O git-flow.png http://1.bp.blogspot.com/-s-DCSmNe65M/UQkiU6f5bnI/AAAAAAAACEM/1d8PPO5oU1w/s1600/Git_icon.svg.png;

isInstall=$(sudo dpkg -l | grep -c "git-flow");
if [ $isInstall -ge 1 ]; then
	echo "\n\n\tInstalação finalizada com sucesso!\n\n";
	notify-send -u normal -i /tmp/git-flow.png 'Instalação Finalizada' 'Git-flow instalado'
	
else
	echo "\n\n\tErro na Instalação!\n\n";
	notify-send -u normal -i /tmp/git-flow.png 'Instalação Finalizada' 'Erro na instlação'
fi 

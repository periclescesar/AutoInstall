#Git install
#Install dependências
echo "\n\n\tInstalando as dependências\n\n";
sudo apt-get install libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev -y;
echo "\n\n\tInstalação das dependências Finalizada\n\n
\n\n\tInstalando Git\n\n";
sudo apt-get install git -y;

cd /tmp;
wget -O git.png http://1.bp.blogspot.com/-s-DCSmNe65M/UQkiU6f5bnI/AAAAAAAACEM/1d8PPO5oU1w/s1600/Git_icon.svg.png;

isInstall=$(sudo dpkg -l | grep -c "git ");
if [ $isInstall -ge 1 ]; then
	echo "\n\n\tInstalação finalizada com sucesso!\n\n";
	notify-send -u normal -i /tmp/git.png 'Instalação Finalizada' 'Git instalado';
	echo "\tConfigure o Git de acordo com o tutorial:";
echo "http://git-scm.com/book/pt-br/v1/Primeiros-passos-Configura%C3%A7%C3%A3o-Inicial-do-Git\n\n";
	
else
	echo "\n\n\tErro na Instalação!\n\n";
	notify-send -u normal -i /tmp/git.png 'Instalação Finalizada' 'Erro na instlação'
fi 

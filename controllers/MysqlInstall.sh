# MySQL5.6 Install

#configurando ambiente
confAmbi() {
	echo "Criando a estrutura de diretório de banco de dados...";
	sudo mysql_install_db;

	echo "rodando script de segurança...";
	sudo mysql_secure_installation;

	notify-send -u normal -i /tmp/mysql.png 'MySQL5.6' 'Ambiente configurado!'
}

sudo apt-get update;
echo "\n\n\tInstalando o MySQL5.6...";
sudo apt-get -y install mysql-server-5.6;

# mensagens finais
cd /tmp
wget -O mysql.png http://www.plustar.jp/lab/blog/wp-content/uploads/2012/06/mysql-logo.png;


isInstall=$(sudo dpkg -l | grep -c "mysql-server-5.6");
if [ $isInstall -ge 1 ]; then
	echo "\n\n\tInstalação finalizada com sucesso!\n\n";
	notify-send -u normal -i /tmp/mysql.png 'MySQL5.6' 'Instalado Com Sucesso!'
	echo "configurando ambiente..."
	confAmbi;
	
else
	echo "\n\n\tErro na Instalação!\n\n";
	notify-send -u normal -i /tmp/mysql.png 'MySQL5.6' 'Erro na Instalação!'
fi 

# Limpando Cache
rm mysql.png;

# Java JDK Install
sudo apt-get update;
echo "\n\n\tInstalando o Java...";
sudo apt-get -y install openjdk-7-jdk;
echo "\n\n\tInstalando a Documentação do Java...";
sudo apt-get -y install openjdk-7-doc;


# mensagens finais
cd /tmp
wget -O java.png http://m.v3.co.uk/IMG/360/177360/java-logo-580x358.png?1305696851;



isInstall=$(sudo dpkg -l | grep -c "openjdk-7-jdk");
if [ $isInstall -ge 1 ]; then
	echo "\n\n\tInstalação finalizada com sucesso!\n\n";
	notify-send -u normal -i /tmp/java.png 'JavaJDK7' 'Instalado Com Sucesso!'
else
	echo "\n\n\tErro na Instalação!\n\n";
	notify-send -u normal -i /tmp/java.png 'JavaJDK7' 'Erro na Instalação!'
fi 

# Limpando Cache
rm java.png;

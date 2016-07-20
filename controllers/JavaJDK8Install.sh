# Java JDK8 Install
sudo apt-get update;
echo "\n\n\tInstalando o Java...";
sudo add-apt-repository ppa:openjdk-r/ppa -y
sudo apt-get update
sudo apt-get install openjdk-8-jdk

sudo update-alternatives --config java
sudo update-alternatives --config javac


echo "\n\n\tInstalando a Documentação do Java...";


# mensagens finais
cd /tmp
wget -O java.png http://m.v3.co.uk/IMG/360/177360/java-logo-580x358.png?1305696851;

isInstall=$(sudo dpkg -l | grep -c "openjdk-8-jdk");
if [ $isInstall -ge 1 ]; then
	echo "\n\n\tInstalação finalizada com sucesso!\n\n";
	notify-send -u normal -i /tmp/java.png 'JavaJDK8' 'Instalado Com Sucesso!'
else
	echo "\n\n\tErro na Instalação!\n\n";
	notify-send -u normal -i /tmp/java.png 'JavaJDK8' 'Erro na Instalação!'
fi 

# Limpando Cache
rm java.png;

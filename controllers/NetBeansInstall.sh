#!/bin/bash
# NetBeans Install

#Baixando logo
cd /tmp
wget -O netbeans.png http://ubuntuhandbook.org/wp-content/uploads/2014/01/netbeans-logo.png


echo "\n\nBaixando NetBeans 8.0...";
wget -O netbeans8.0.2.sh http://download.netbeans.org/netbeans/8.0.2/final/bundles/netbeans-8.0.2-linux.sh;


echo "\n\nInstalando NetBeans 8.0...";
sh netbeans8.0.2.sh;




# mensagens finais
#checando instalação
isInstall=$(sudo dpkg -l | grep -c "netbeans");
if [ $isInstall -ge 1 ]; then
	echo "\n\n\tInstalação finalizada com sucesso!\n\n";
	notify-send -u normal -i /tmp/netbeans.png 'NetBeans 8.0' 'Instalação finalizada com sucesso!'
	rm netbeans8.0.2.sh;
else
	echo "\n\n\tErro na Instalação!\n\n";
	notify-send -u normal -i /tmp/netbeans.png 'NetBeans 8.0' 'Erro na Instalação!'
fi

# Limpando Cache
rm netbeans.png;

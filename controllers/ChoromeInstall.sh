# Chorome Install
cd /tmp

echo "\n\n\tInstalando o Chrome...";
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

sudo apt-get update 
sudo apt-get install google-chrome-stable

# mensagens finais

wget -O chrome.png http://img2.wikia.nocookie.net/__cb20121123181426/halo/images/4/45/Google_Chrome_Logo.png;

isInstall=$(sudo ls /usr/local/bin | grep -c "google-chrome");
if [ $isInstall -ge 1 ]; then
	echo "\n\n\tInstalação finalizada com sucesso!\n\n";
	notify-send -u normal -i /tmp/chrome.png 'Chrome' 'Instalado Com Sucesso!'
else
	echo "\n\n\tErro na Instalação!\n\n";
	notify-send -u normal -i /tmp/chrome.png 'Chrome' 'Erro na Instalação!'
fi 

# Limpando Cache
rm chrome.png ;

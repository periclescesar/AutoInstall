#kodi Install
#Install dependencies
echo "\n\n\tInstalando dependências\n\n";
sudo apt-get install python-software-properties pkg-config;
sudo apt-get install software-properties-common;
sudo add-apt-repository ppa:team-xbmc/ppa;
sudo apt-get update;
echo "\n\n\tInstalando Kodi\n\n"
sudo apt-get install kodi kodi-pvr* kodi-audioencoder*;
echo "\n\n\tInstalação Finalizada\n\n";

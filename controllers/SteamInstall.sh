# Steam Install
sudo apt-get install Steam;
echo "\nAdicionando o repositório da steam.";
sudo apt-add-repository ppa:mdeslaur/steamos;
sudo apt-get update;
sudo apt-get install steamos-compositor steamos-modeswitch-inhibitor steamos-xpad-dkms
echo "\n\n\tInstalação Finalizada\n\n";
notify-send -u normal -i /usr/share/app-install/icons/steam.png 'Instalação Finalizada' 'Steam instalado'

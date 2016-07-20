# LibreOffice Install
#Download da Ultima Versão
cd /tmp;
echo "Removendo versões anteriores...";
apt-get remove libreoffice;
apt-get autoremove;
echo "Baixando a ultima versão...";

process=$(uname -p)
if [ $process = "x86_64" ]
then
	wget -c -O libreoffice.tar.gz http://download.documentfoundation.org/libreoffice/stable/4.3.5/deb/x86_64/LibreOffice_4.3.5_Linux_x86-64_deb.tar.gz;
else
	wget -c -O libreoffice.tar.gz http://download.documentfoundation.org/libreoffice/stable/4.3.5/deb/x86/LibreOffice_4.3.5_Linux_x86_deb.tar.gz;
fi

echo "Extraindo os arquivos...";
tar -zxvf libreoffice.tar.gz;
cd LibreOffice*/DEBS;

echo "Instalando...";
sudo dpkg -i *.deb;
rm -R /tmp/LibreOffice*;

wget -O icoLibre.png http://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/LibreOffice_4.0_Main_Icon.svg/256px-LibreOffice_4.0_Main_Icon.svg.png;

echo "\n\n\tInstalação Finalizada\n\n";

notify-send -u normal -i /tmp/icoLibre.png 'Instalação Finalizada' 'LibreOffice instalado'
rm icoLibre.png;

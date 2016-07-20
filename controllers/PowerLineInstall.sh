#PowerLine install

#Download da Ultima Versão
cd /tmp;

echo "Baixando a ultima versão...";
git clone https://github.com/powerline/fonts.git;

cd fonts/;

echo "\n\n\tInstalando as fontes...\n\n";
sh install.sh;

echo "\n\n\tInstalação finalizada com sucesso!\n\n";

notify-send -u normal 'Instalação Finalizada' 'Fonts PowerLine instaladas';

cd ../;
rm -Rf fonts;
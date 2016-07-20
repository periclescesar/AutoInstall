#Boot Repair Install
sudo add-apt-repository -y ppa:yannubuntu/boot-repair;
sudo apt-get update;
sudo apt-get install -y boot-repair && boot-repair;
echo "\n\n\tInstalação Finalizada\n\n";

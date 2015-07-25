##
#DevelWebView
#
# @todo Mudar os exits dos submenus para saida direta e colcar uma opção para voltar.
##

#var Globais
# mudança de cores do prompt
orage=`tput setaf 3`
green=`tput setaf 2`
reset=`tput sgr0`
#####################
showOptions() {
	echo "==========================================================";
	echo "\tSelecione o item do memu desejado:";
	
	echo $orage;
	echo "\t-1 - Servidores {vazio}";
	echo "\t-2 - Linguagens {vazio}";
	echo "\t-3 - Ferramentas {vazio}";
	
	echo $green;
	echo "\t1 - Apache 2: Servidor HTTP";
	echo "\t2 - MySQL 5.6: Sistema de Gerenciamento Banco de Dados";
	echo "\t3 - PHP 5: Interpretador do PHP";
	echo "\t4 - LAMP: Pacote de Desenvolvimento WEB (Linux, Apache, MySQL e PHP)";
	echo "\t5 - Composer: Gerência de dependências para PHP";
		
	echo $reset;

	echo "\t0 - Sair";

	echo '';
	echo "\t$orage Laranja = SubMenu; $green Verde = instaláveis;";
	echo $reset;
	echo "===========================================================";
	echo -n "->OPÇÃO: "
}

validarOpcao() {
	opcao=$1;
	
	# verificar se foi digitada uma opãoo válida,
	# numérica de 0 a 4;
	if [ -z $opcao ] || [ 0 -gt $opcao ] || [ $opcao -gt 5 ]; then
		echo "ERRO: digite uma opção válida!"
	fi
}

chooseAction() {
	opcao=$1;
	
	case $opcao in 
		0)
			echo "Saindo..."
		    exit;;
		    
		1)
			./controllers/ApacheInstall.sh;;
		2)
			./controllers/MysqlInstall.sh;;
		3)
			./controllers/PhpInstall.sh;;
		4)
			./controllers/PackLAMPInstall.sh;;
		5)
			./controllers/ComposerInstall.sh;;
		
	esac;
}

main() {
	while true;	do
		clear;
		
		showOptions;
		
		read opcao;
		
		validarOpcao $opcao;
		
		chooseAction $opcao;
	done;
}

main;

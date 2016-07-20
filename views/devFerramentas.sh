##
#DevFerramentasView
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
	
	echo $green;
	echo "\t1 - Git: Sistema de versionamento";
	echo "\t2 - GitFlow: Extensão do git para organização dos branchs";
	echo "\t3 - GitKraken: Ferramenta gráfica para gerenciamento do Git";
	echo "\t4 - Vim: Editor de texto via cmd";
	
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
	if [ -z $opcao ] || [ 0 -gt $opcao ] || [ $opcao -gt 4 ]; then
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
			./controllers/GitInstall.sh;;
		2)
			./controllers/GitFlowInstrall.sh;;
		3)
			./controllers/GitKrakenInstall.sh;;
		4)
			./controllers/VimInstall.sh;;
		
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

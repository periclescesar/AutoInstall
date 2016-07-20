##
# MainView
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
	echo "\tSelecione o pacote desejado:";
	
	echo $orage;
	echo "\t1 - Desenvolvimento";
	echo "\t2 - Editores";
	echo "\t3 - Ferramentas de Sistema";
	echo "\t4 - Games";
	echo "\t5 - Media";
	echo "\t6 - Navegadores";
			
	echo $reset;
	
	echo "\t0 - Sair";
	
	echo '';
	echo "$orage Laranja = SubMenu; $green Verde = instaláveis;";
	echo $reset;
	echo "===========================================================";
	echo -n "->OPÇÃO: "
}

validarOpcao() {
	opcao=$1;
	
	# verificar se foi digitada uma opãoo válida,
	# numérica de 0 a 4;
	if [ -z $opcao ] || [ 0 -gt $opcao ] || [ $opcao -gt 6 ]; then
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
			./views/devel.sh;;	
		2)
			./views/editores.sh;;
		3)
			./views/ferramentasSys.sh;;
		4)
			./views/games.sh;;	
		5)
			./views/media.sh;;
		6)
			./views/navegadores.sh;;
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

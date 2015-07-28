##
#FerramentasSysView
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
	echo "\t1 - BootRepair";
	echo "\t2 - Docky";
	echo "\t3 - GrubCustomizer";
	echo "\t4 - HardInfo";
	echo "\t5 - Psensor";
	echo "\t6 - Synaptic";
	echo "\t7 - UnityTweakTool";
	echo "\t8 - VirtualBox";
	echo "\t9 - Wine";
	
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
	if [ -z $opcao ] || [ 0 -gt $opcao ] || [ $opcao -gt 9 ]; then
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
			./controllers/BootRepairInstall.sh;;
		2)
			./controllers/DockyInstall.sh;;
		3)
			./controllers/GrubCustomizerInstall.sh;;
		4)
			./controllers/HardInfoInstall.sh;;
		5)
			./controllers/PsensorInstall.sh;;
		6)
			./controllers/SynapticInstall.sh;;
		7)
			./controllers/UnityTweakToolInstall.sh;;
		8)
			./controllers/VirtualBoxInstall.sh;;
		9)
			./controllers/WineInstall.sh;;		
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

#!/bin/bash
#script para instalação de programas
#autor: Hudson Orsine Assumpção

#pergunta o caminho do arquivo à descompactar
echo -e "Digite o caminho onde se encontra o arquivo (NO FINAL DEVE EXISTIR /)"
echo ""
read l

#pergunta o nome do arquivo
echo ""
echo -e "Digite o nome do arquivo SEM A TERMINAÇÃO"
read n

#pergunta a terminação do arquivo
echo ""
echo -e "Digite a terminação do arquivo COM O PONTO (ex: .tar.gz,. zip, .gzip, etc)"
read t
echo ""

#testa o arquivo e descompacta conforme necessário
test "$t" = ".tar.gz" && tar -zvxf $l$n$t
test "$t" = ".bz2" && bunzip $l$n$t
test "$t" = ".tar" && tar -xpvf $l$n$t
test "$t" = ".tar.bz2" && tar -xvjf $l$n$t
test "$t" = ".gz" && gunzip $l$n$t
test "$t" = ".zip" && unzip $l$n$t

echo "Descompactado!"

#entra no novo diretório
cd $l$n

#dá o comando de configuração
echo ""
echo "Configurando"
./configure
echo ""

#executa o comando make
echo ""
echo "Começando a instalação"
echo ""

#pergunta se gostaria de continuar e dá duas opções
echo ""
echo -e "Sua senha de root é necessária. Você deseja continuar? (s/n)"
read ro
echo"

#testa a resposta e executa os comandos necessários
if test "$ro" = "s"
then
 su
else
 exit
fi

#dá o comando make install
echo ""
echo "Terminando a instalação"
make install
echo "pronto"

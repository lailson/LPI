#!/bin/bash

function inicio()
{

clear

echo "Gerenciador de Tarefas"
echo "======================"
echo ""
echo "Selecione as opcoes:"
echo ""
echo "1 - Exibir status da utilizacao das particoes  do sistema."
echo "2 - Exibir status de usuarios logados."
echo "3 - Exibir data e hora."
echo "4 - Sair"
echo 
read opcao
case $opcao in	
	1) tarefa-a ;;
	2) tarefa-b ;;
	3) tarefa-c ;;
	4) sair;;
	*) echo "Opcao Invalida" ; sleep 2 ; inicio ;;
esac
}

function tarefa-a()
{
	echo "Exibindo status da utilizacao das particoes do sistema"
	df -h
	sleep 3
	inicio
}

function tarefa-b()
{
	echo "Usuario logado:"
	who
	sleep 3
	inicio
}

function tarefa-c()
{
	echo "Data e hora:"
	data=`/bin/date +%d-%m-%Y--%H:%M:%S`
	echo $data	
	sleep 3
	inicio
}

function sair()
{
	echo "Script encerrado"
	exit 0
}

inicio

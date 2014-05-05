#!/bin/bash

#Verifica se o diretorio /tmp/.backup existe caso contrario o cria
ls /tmp/.backup 2>> /dev/null
if [ $? -ne 0 ]; then
        mkdir /tmp/.backup
fi

#Copia de todos os arquivos com log
data=`/bin/date +%d-%m-%Y--%H:%M:%S`
cp -v /home/lailson/*.txt /tmp/.backup >>  $data.log

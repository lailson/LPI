#!/bin/bash

#Script para enviar um e-mail que atualize o endereço IP de internet

ip=`ifconfig | head -2 | tail -1 | cut -d ":" -f 2 | sed 's/^ *//' | cut -d " " -f 1`

echo $ip | mail -s "IP alterado" lailson.pi@gmail.com

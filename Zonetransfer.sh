#!/bin/bash

echo "Script para Zone Transfer" 

echo "Inform o dominio a ser testado: "
read system

for server in $system $(host -t ns $system | cut -d " " -f4);
do
	host -l -a $system $server
done

#!/bin/bash

direccion_ip=$1
puertos="33,80,21,54,67,138,161,2020"

[ $# -eq 0 ] && {echo "Modo de uso: $0 <Direccion ip proporcionada por el usuario>"; exit 1; }

IFS=,
for port in $puertos
do 
  timeout 1 bash -c "echo > /dev/tcp/$direccion_ip/$port > /dev/null 2>&1" &&\
  echo $direccion_ip":"$port" is open"\
  ||\
  echo $direccion_ip":"$port" is closed"
done

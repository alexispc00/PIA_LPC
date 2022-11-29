#!/bin/bash

date
  echo "Menu Prinncipal"
  echo "1. Escaneo de red"
  echo "2. Escaneo individual"
  echo "3. Escaneo udp"
  echo "4. Escaneo de script"
  echo "5. Exit"
read -p "Opcion [1 - 5]" c
case $c in
  1) nmap -sn <aquí va tu subred>;;
  2) nmap -v -A <aquí va la ip de un dispositivo>;;
  3) $nmap --script ssl-poodle <aquí va la ip de un dispositivo>;;
  4) $nmap --script ssl-ccs-injection <ip victima> -oN ccs_injections_test.txt;;
  5) echo "Estas saliendo...."; exit 0;;

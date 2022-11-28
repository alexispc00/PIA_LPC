Se utiliza una maquina virtual la cual lleva como nombre Kioptrix, con la cual buscaremos la ip de esta misma maquina con el comando **$nmap -v -A <aquí va la ip de un dispositivo(computadora)>** , despues para saber cual ip es usaremos el comando **$nmap -v -A <aquí va la ip de un dispositivo>**.
Evaluaremos algunas vulnerabilidades sobre puertos/servicios que el equipo escaneado tiene disponibles, por ejemplo, el puerto 443 (SSL), probemos ejecutando el siguente comando:                                                              **$nmap --script ssl-poodle <aquí va la ip de un dispositivo(Kioptrix)>**
 evaluar alguna otra vulnerabilidad respecto a ese servicio, probemos: **$nmap --script ssl-ccs-injection <ip victima> -oN ccs_injections_test.txt**

**automap.sh**: Despliega un menu, en el cual se puede seleccionar las siguenentes caracteristicas;
- Escaneo de red: se ejecuta un nmap para realizar un escaneo en la subred proporcionada por el usuario y el resultado sera guardardo en un archivo. 
- Escaneo individual: realiza un escaneo a una ip proporcionada por el usuario de manera que se pueda determinar que servicios esta desplegando al momento del escaneo
- Escaneo udp: scaneo tipo UDP a la ip que proporcione el usuario
- Escaneo de script: ejecuta un nmap con la opción de script, de manera que el usuario proporcione el nombre del script y la dirección ip sobre la que se realizará el escaneo
- Exit: salida del script

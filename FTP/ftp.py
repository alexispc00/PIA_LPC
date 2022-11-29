#script para transferencia de FTP
#Objetivo: conectarse a servidor ftp y hacer un upload de un archivho. 
# 24/10/2022 -v1 Anhuar Alexis Plata Corpus

# Importacion del modulo FTP 
from ftplib import FTP

#Estableciendo conexion al servidor
ftp = FTP('192.168.77.131')

#Iniciamos sesion
ftp.login('johnny','2023858')

#Cambiamos a el directorio upload
ftp.cwd('upload')

#listamos el contenido del directorio upload
ftp.retrlines("LIST")

#Cargamos el archido ADVERTENCIA.txt)
ftp.storlines('STOR ADVERTENCIA.txt', open('ADVERTENCIA.txt', 'rb'))

#salida de la conexion ftp
ftp.quit()

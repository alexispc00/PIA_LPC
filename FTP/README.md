## **Descripcion del script**
Script llamado ftp.py
Se conecta a un servidor en debian 11, usamos credenciales que se crearon previamente y carga un archivo llamado ADVERTENCIA.txt pero modificado.

#### Datos que te podrian servir

Para realizar esta practica se necesita tener una maquina virtual y tener instalado un servidor ftp.
Realizamos varios ajustes a la configuración que trae por default el servidor de FTP, usando un edito de texto(en este caso nano)
- Comando: $sudo nano /etc/vsftpd.conf

En el archivo buscaremos que estén configuradas las siguientes opciones:
- anonymous_enable=NO
- local_enable=YES
- write_enable=YES 
- chroot_local_users=YES
- user_sub_toke=$USER
- local_root=/home/$USER/ftp
- pasv_min_port=30000
- pasv_max_port=31000
- userlist_enable=YES
- userlist_file=/etc/vsftpd.user_list
- userlist_deny=NO

script llamado ftp.py
Se conecta a un servidor en debian 11, usamos credenciales que se crearon previamente y carga un archivo llamado ADVERTENCIA.txt pero modificado

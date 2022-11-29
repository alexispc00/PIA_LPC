# Importamos fernet desde cryptography
#
#
from cryptography.fernet import Fernet

#Definimos una funcion genwrite para generar una llave para cifrado
def genwrite():
	key = Fernet.generate_key()
	with open("pass.key","wb") as key_file:
		key_file.write(key)
# Se llama a la fun para generar el archivo "pass.key" que contiene la llave
genwrite()
#
#Definimos la funcion call_key para leer el contenido del archivo "pass.key"
#

def call_key():
	return open ("pass.key","rb").read()

# Ahora ciframos un mensaje almacenado y codificado previamente

key = call_key()
banner = "Bienvenido a Laboratorio de Programacion de Ciberseguridad (LPC)".encode()
a = Fernet(key)
coded_banner = a.encrypt(banner)
print(coded_banner)

#Ahora deciframos el mensaje peviamente cifrado
key = call_key()
b = Fernet(key)
decoded_banner = b.decrypt(coded_banner)
print(decoded_banner)

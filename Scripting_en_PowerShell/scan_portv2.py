import socket
from unittest import result 
	
def scan(addr, port):
    #creando nuevo socket
    socket_obj= socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    socket.setdefaulttimeout(1)

    #conexion exitosa devuelve 0. Devuelve error en caso contrario
    result = socket_obj.connect_ex((addr,port)) #direccion y puerto en tupla

    socket_obj.close()
    return result

#parte 3, lista de puertos
ports = [21,23,44,76]

#parte 4
#bucle por todas las ip del rango 192.168.0.*
for i in range(1,255):
    addr= "192.168.0.{}".format(i)
    for port in ports:
        result=scan(addr,port)
        if result == 0:
            print(addr, port, "OK")
        else:
            print(addr, port, "Failed")

import nmap
escaner = nmap.PortScanner()
scaner.scan('ip','puertos(1-1024)','-v -sV')

# Para determinar que parámetros de nmap usó Python
scaner.command_line()

#  Para determinar la lista de direcciones ip que se escaneó
scaner.all_hosts()

# Mostrar el estado de un equipo a partir de una dirección IP
scaner['direccion ip escaneada'].state()

# Muestra los protocolos de transporte del equipo escaneado a partir de su dirección IP 
scaner['direccionn ip escaneada'].all_protocols()

# Muestra todos los puertos TCP hallados en el equipo destino 
scaner['direccion ip escaneada']['tcp'].keys()

# Determinar si un puerto se encontró abierto
scaner['direccion ip escaneada'].has_tcp(21)
scaner['direccion ip escaneada'].has_tcp(22)

# Es posible determinar que servicio está asociado con dicho puerto (siempre que el escaneo sea
con opción -sV}
scaner[‘ dirección ip escaneada’].[‘tcp’][22]

# Es posible conocer más detalles del servicio asociado a un puerto abierto
scaner[‘ dirección ip escaneada’].[‘tcp’][22][product]


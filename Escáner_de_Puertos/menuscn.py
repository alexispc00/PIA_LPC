import nmap

print('''----Tipo de escaneo----
1) Escaneo UDP
2) Escaneo completo
3) Deteccion del sistema operativo
4) Escaneo de red con ping''')

tipo = int(input("Ingresa el tipo de escaneo (1-4): "))

scaner = nmap.PortScanner()

if 1<=tipo<=4:
  
  if tipo == 1:
    scaner.scan('ip','puertos(1-1024)', '-v -sV')
  
  elif tipo == 2:
    scaner.all_hosts()
  
  elif tipo == 3:
    scaner['ip'].state()
  
  elif tipo == 4:
    scaner['ip']['tcp'][22][product]

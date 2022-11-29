import sys
import threading
from socket import *

#parte 2 
def tcp_test(port):
    sock = socket(AF_INET, SOCK_STREAM)
    sock.settimeout(10)
    result = sock.connect_ex((target_ip, port))
    if result == 0:
        print("Opened Port:", port)
#parte 3
if __name__=='__main__':
    host = sys.argv[1]
    portstrs = sys.argv[2].split('-')

#parte 4
start_port = int(portstrs[0])
end_port = int(portstrs[1])

#parte 5
target_ip = gethostbyname(host)

#parte 6 

hilos = []
for port in range(start_port, end_port):
    hilo = threading.Thread(target = tcp_test, args=(port, ))
    hilos.append(hilo)
    hilo.start()


#Escaneo de equipos activos en la sub_red

#Determinando gateway
$subred = (Get-NetRoute -DestinationPrefix 0.0.0.0/0).NextHop
Write-Host "== Determinando tu gateway ..."
Write-Host "Tu gateway: $subred"


#Determinando rango de subred
$rango = $subred.Substring(0,$subred.IndexOf('.') + 1 + $subred.Substring($subred.IndexOf('.')+1).IndexOf('.')+3)
Write-Host "== Determinando tu rango de subred .  .  ."
echo $rango

#
##Determinando si $rango termina en " . "
##En ocasiones el rango de subred no termina en punto, necesitamos forzarlo.
#

$punto = $rango.EndsWith(".")
if ($punto -like "False")
{
	$rango = $rangoo + '.' #agregamos el punto en caso de que no estuviera
}

#Se define un areglo de puertos comunes

$portstoscan = @(20,29,129,88,8080,19,100)
$waittime = 100

#Solicitando direccion ip

Write-Host "Direccion ip a escanear: " -NoNewline
$direccion = Read-Host

#Generamos un bucle forach para evaluar puertos en $portstoscan

foreach ($p in $portstoscan)
{
	$TCPOobject = new-object System.Net.Sockets.TcpClient
		try{$resultado = $TCPOobject.ConnectAsync($direccion,$p).Wait($waittime)}catch{}
		if ($resultado -eq "True")
		{
			Write-Host "Puerto abierto: " -NoNewline; Write-Host $p -ForegroundColor Green
		}
}

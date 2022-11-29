clear-host
Write-Host "Bienvenido a un ejemplo de codeficacionn/ decodificacion"
Write-Host "Codificacion un archivo de texto"

$inputfile = "C:\Users\plata\OneDrive\secret.txt"
$fc = get-content $inputfile
$GB =[System.Text.Encoding]::UTF8.Getbytes($fc)
$etext =[System.Convert]::ToBase64String($GB)
Write-Host "El contenido del archivo codificad es :" $etext -ForegroundColor Green

#Decodificando contento de un archivo
Write-Host "DECODIFICANDO el texto previo:" 
[System.Text.Encoding]::ASCII.GetString([System.Convert]::FromBase64String($etext)) | Out-File -Encoding "ASCII" c:\Users\plata\OneDrive\decode_secret1.text
$outfile12 = get-content c:\Users\plata\OneDrive\decode_secret1.txt
Write-Host "El texto decodificado es el siguiente" -ForegroundColor Green
Write-Host "DECODIFICANDO:" $outfile12

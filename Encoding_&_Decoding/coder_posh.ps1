
Clear-Host
#Mensaje de bienvenida
Write-Host "Ejemplo de codificador Base64 en PowerShell" -ForegroundColor Yellow
Write-Host "Escribe una frase a codifica :"-ForegroundColor Yellow

#Solicitando la entrada de una cadena de texto.

$frase = Read-Host

#Codificando en base64 y guardando resultados en una cadena.

$encod = [Convert]::ToBase64String([Text.Encoding]::Unicode.GetBytes(($frase)))

#Imprimiendo la salida
Write-Host "La frase escrita en Base64 es : " -ForegroundColor Green
Write-Output $encod

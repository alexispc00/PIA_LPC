Clear-Host

Write-Host "Ejemplo de Decodificador Base64 en PowerShell" -ForegroundColor Yellow

$texto = 'TABhAGIAbwByAGEAdABvAHIAaQBvACAAZABlACAAUAByAG8AZwByAGEAbQBhAGMAaQDzAG4AIABwAGEAcgBhACAAQwBpAGIAZQByAFMAZQBnAHUAcgBpAGQAYQBkACAAUwBlAHMAaQDzAG4AIAAxADAA'
Write-Host "La cadena a decodificar es: " -ForegroundColor Blue
Write-Host $texto

#decodificando mensaje

$decod = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($texto))

Write-Host "La cadena ya decodificar es: " -ForegroundColor Green
Write-Host $decod

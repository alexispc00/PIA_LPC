#Script en PowerShell

$tareax = New-ScheduledTaskAction -Execute ‘send_sysinfo.ps1’

$trigger = New-ScheduledTasktrigger -Once -At 06:00am

Register-ScheduledTask -Action $tareax -Trigger $trigger -TaskPath “MisTareas” -TaskName 
“Enviar sysinfo” -Description “Envio de información del sistema”

# Script de PowerShell que obtiene información basica de un equipo

# lo guarda en un archivo csv

# usando una cuenta de gmail.

$computer=hostname

$query = Get-WmiObject -Class win32_computersystem -ComputerName $computer

$name = $query.Name

$make = $query.Manufacturer

$model = $query.Model

$ram = $query.TotalPhysicalMemory/1Gb

$os = (Get-WmiObject -Class win32_operatingsystem -ComputerName $computer).Caption

$cpu = (Get-WmiObject -Class Win32_processor -ComputerName $computer).Name

$users = $query.Username


$Object = New-Object PSObject
$Object | Add-Member -MemberType NoteProperty -Name "ComputerName" -Value $name
$Object | Add-Member -MemberType NoteProperty -Name "Make" -Value $make
$Object | Add-Member -MemberType NoteProperty -Name "Model" -Value $model
$Object | Add-Member -MemberType NoteProperty -Name "RAM" -Value $ram
$Object | Add-Member -MemberType NoteProperty -Name "OS" -Value $os
$Object | Add-Member -MemberType NoteProperty -Name "CPU" -Value $cpu
$Object | Add-Member -MemberType NoteProperty -Name "LoggedOnUsers" -Value $users
$array = $Object
$array | Export-Csv -Path c:\scripts\test.csv -NoTypeInformation # Aqui se genera archivo csv


$Username = "@gmail.com"; # Cuenta de gmail la cual enviara el .csv
$Password = "clave super secreta";      # Aqui va tu password de super usuario de ps
$path = "C:\scripts\test.csv";       # Aqui va la ruta en la cual se generara el .csv



function Send-ToEmail([string]$email, [string]$attachmentpath){



    $message = new-object Net.Mail.MailMessage;
    $message.From = "@gmail.com"; #Cuenta de gmail la cual enviara el .scv
    $message.To.Add($email);
    $message.Subject = "<Aqui va el asunto>."; #Asunto del correo
    $message.Body = "<Aqui va el cuerpo del mensaje"; #Cuerpo o Mensaje del correo.
    $attachment = New-Object Net.Mail.Attachment($attachmentpath);
    $message.Attachments.Add($attachment);


    $smtp = new-object Net.Mail.SmtpClient("smtp.gmail.com", "587");
    $smtp.EnableSSL = $true;
    $smtp.Credentials = New-Object System.Net.NetworkCredential($Username, $Password);
    $smtp.send($message);
    write-host "Mail Sent" ; 
    $attachment.Dispose();

 }

Send-ToEmail  -email "destinario@dominio.com" -attachmentpath $path; # En destinatario pones el correo de la persona a la que le debe de llegar el .scv

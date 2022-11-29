import smtplib
import os

from email.mime.text import MIMEText
from email.mime.image import MIMEImage
from email.mime.multipart import MIMEMultipart


ImgFileName = ("C:\\Users\\nnn\\nnn\\fcfm_cool.png")
img_data = open(ImgFileName, 'rb').read()

# Creamos objeto Multipart
msg = MIMEMultipart()
msg['From']="CORREO_QUIEN_LO_MANDA@gmail.com"
msg['To']="CORREO_LEGADA@gmail.com"
msg['Subject']="Practica 12"

From="QUIEN_LO_MANDA"
To="CORREO_LEGADA@gmail.com"
Subject="Tarea"

text = MIMEText("Alumno: Anhuar Alexis Plata Corpus")
msg.attach(text)
image = MIMEImage(img_data, name=os.path.basename(ImgFileName))
msg.attach(image)

# Autenticamos
mailServer = smtplib.SMTP('smtp.gmail.com',587)
mailServer.ehlo()
mailServer.starttls()

mailServer.login("CORREO@gmail.com","CONTRASEÑA")

# Enviamos
mailServer.sendmail(From, To, msg.as_string())

# Cerramos conexión
mailServer.close()

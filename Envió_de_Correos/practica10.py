import smtplib

conn = smptlib.SMTP(‘smtp.gmail.com’, 587)
conn.ehlo()
conn.starttls()
conn.login(‘correo@gmail.com’, ‘cotraseña app google’)
conn.sendmail(‘origen@gmail.com’,’destino@dominio’,’Subject: TestPractica10\n\nHola\n\n Prueba de <matricula> - <Nombre>’) 
conn.quit()

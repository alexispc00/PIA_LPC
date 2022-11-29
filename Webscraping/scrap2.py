#importacion de modulos
import requests
from bs4 import BeautifulSoup

#Obtener los datos mediante peticion get 
URL = "https://realpython.github.io/fake-jobs/"
page = requests.get(URL)

#Analizamos el contenido HTML con BeautifulSoup
soup = BeautifulSoup(page.content, 'html.parser')
results = soup.find(id="ResultsContainer")

#Formateamos la salida del objeto results de BeautifulSoup
print(results.prettify())

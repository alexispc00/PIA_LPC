import requests 
import base64
from requests import Response

##Para descargar la imagen del sitio

if __name__ == '__main__' :
	url = 'https://i.imgur.com/S63yhAB.jpeg'
	
	Response: Response = requests.get(url, stream=True)
	with open('stones.jpg', 'wb') as file_down:
		for chunk in Response.iter_content() : 
			file_down.write(chunk)
	Response.close()

## Para codificar la imagen

with open ('stones.jpg','rb') as binary_file:
	binary_file_data = binary_file.read()
	base64_encoded_data = base64.b64encode(binary_file_data)
	base64_message = base64_encoded_data.decode('utf8')
	print(base64_message)
 

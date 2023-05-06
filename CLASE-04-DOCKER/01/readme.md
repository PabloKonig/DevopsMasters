**Parte 1**
Crear un archivo de nombre 1-nginx.sh
- Ingresar a dockerhub para buscar la imagen solicitada, en este caso nginx 1.22.1
https://hub.docker.com/_/nginx/tags?page=1&name=1.22.1
- Copiar el comando que nos dan en dockerhub para descargar dicha imagen, en este caso "docker pull nginx:1.22.1"
- Utilizar editor de texto como vi/nano/vim 
- nano 1-nginx.sh
- colocar #!/bin/bash al principio del archivo para especificar que trabajaremos con bash
- Pegar el comando "docker pull nginx:1.22.1"
- guardar
- Probar utilizando ./1-nginx.sh (Si estás dentro de la carpeta que contiene el archivo, sino PATH/1-nginx.sh. Ex: /home/Documentos/1-nginx.sh)
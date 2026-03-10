# 1. Traemos un servidor Nginx ya listo y muy ligero (versión alpine)
FROM nginx:alpine

# 2. Copiamos nuestro archivo index.html a la carpeta pública de Nginx
COPY index.html /usr/share/nginx/html/
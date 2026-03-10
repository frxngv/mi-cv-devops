# Portfolio: CV Web con Docker y Nginx

Este repositorio contiene mi primer proyecto práctico de infraestructura y contenerización. Se trata de una página web personal estática, empaquetada y servida mediante contenedores Docker.

## Tecnologías utilizadas

* HTML5
* Nginx (Servidor web ligero basado en Alpine Linux)
* Docker (Contenerización)
* Git y GitHub (Control de versiones)

## Instrucciones de Despliegue Local

Para ejecutar este proyecto en local, es necesario tener Docker instalado y el servicio iniciado.

1. Clonar el repositorio:
```bash
git clone [https://github.com/frxngv/mi-cv-devops.git](https://github.com/frxngv/mi-cv-devops.git)
cd mi-cv-devops
```

2. Construir la imagen de Docker:
```bash
docker build -t mi-cv .
```

3. Ejecutar el contenedor en segundo plano:
```bash
docker run -d -p 8080:80 mi-cv
```

Una vez finalizado, el sitio web estará disponible en el navegador a través de http://localhost:8080.
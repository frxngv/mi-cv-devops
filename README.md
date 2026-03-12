# Portfolio: CV Web con Docker y Nginx

🌍 **Web en vivo:** [Ver mi CV desplegado](https://mi-cv-devops-fran-latest.onrender.com/)

Este repositorio contiene mi primer proyecto práctico de infraestructura y contenerización. Se trata de una página web personal estática, empaquetada y servida mediante contenedores Docker.

## Tecnologías utilizadas

* HTML5
* Nginx (Servidor web ligero basado en Alpine Linux)
* Docker (Contenerización)
* Git y GitHub (Control de versiones)
* GitHub Actions (Integración Continua - CI)
* GitHub Container Registry (Almacén de Imágenes en la nube)
* Render (Despliegue Continuo - CD y Hosting Cloud)

## Entendiendo el Proyecto (Para Principiantes)

Si estás empezando en el mundo DevOps o Cloud, aquí tienes una explicación de los conceptos clave que se aplican en este proyecto:

* **Imagen de Docker:** Es la receta o el paquete estático. Contiene un sistema operativo mínimo, el servidor web (Nginx) y los archivos de la página web.
* **Contenedor:** Es el proceso en ejecución creado a partir de la imagen. Es un entorno aislado donde nuestra web funciona.
* **Dockerfile:** El archivo de configuración donde definimos paso a paso cómo se debe construir la imagen de Docker.
* **CI (Integración Continua):** Gracias a GitHub Actions, cada vez que se sube un cambio al repositorio, un "robot" comprueba automáticamente que la imagen de Docker se construye sin errores y la publica en el almacén de GitHub (GHCR).
* **GitHub Actions (CI):** El proyecto incluye un pipeline automatizado. Cada vez que se sube nuevo código, un servidor de GitHub comprueba automáticamente que la imagen de Docker se puede construir correctamente sin errores.
* **CD (Despliegue Continuo):** El repositorio está conectado a la plataforma Cloud Render. Al publicarse una nueva imagen válida en el almacén, el servidor en la nube la descarga y actualiza la web pública automáticamente y sin intervención manual.

## Instrucciones de Despliegue Local

Hay dos formas de ejecutar este proyecto en tu máquina. En ambos casos, necesitas tener Docker instalado y ejecutándose.

### Opción A: Ejecución rápida desde la nube (Recomendado)
No necesitas descargar el código fuente. Puedes decirle a Docker que descargue y ejecute directamente la imagen pre-construida desde mi almacén público en GitHub con un solo comando:

```bash
docker run -d -p 8080:80 ghcr.io/frxngv/mi-cv-devops:latest
```

### Opción B: Construcción manual en local
Si prefieres descargar el código fuente y construir la imagen tú mismo paso a paso:

**1. Clonar el repositorio:**
Descarga los archivos del proyecto a tu equipo y entra en la carpeta.
```bash
git clone [https://github.com/frxngv/mi-cv-devops.git](https://github.com/frxngv/mi-cv-devops.git)
cd mi-cv-devops
```

**2. Construir la imagen de Docker:**
Este comando lee el `Dockerfile` y empaqueta la aplicación. El parámetro `-t mi-cv` le asigna ese nombre a la imagen, y el punto `.` le indica a Docker que busque los archivos en la carpeta actual.
```bash
docker build -t mi-cv .
```

**3. Ejecutar el contenedor en segundo plano:**
Este comando arranca un contenedor basado en la imagen recién creada. 
El parámetro `-d` lo ejecuta en segundo plano (liberando la terminal), y `-p 8080:80` conecta el puerto 8080 de tu ordenador con el puerto 80 del contenedor (el puerto por defecto de Nginx).
```bash
docker run -d -p 8080:80 mi-cv
```

Una vez finalizado, el sitio web estará disponible en el navegador a través de http://localhost:8080.
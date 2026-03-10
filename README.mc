# ☁️ Mi CV DevOps - Primer Proyecto Docker

Este es mi primer proyecto práctico explorando el mundo de Cloud y DevOps. Consiste en una página web personal (CV) empaquetada y desplegada utilizando contenedores **Docker** y **Nginx**.

## 🚀 Tecnologías utilizadas
* HTML5
* Docker
* Nginx (servidor web ligero basado en Alpine Linux)

## ⚙️ Cómo ejecutar este proyecto en local

Si quieres levantar este proyecto en tu propia máquina, solo necesitas tener [Docker Desktop](https://www.docker.com/products/docker-desktop/) instalado.

**1. Clonar el repositorio:**
\`\`\`bash
git clone [ENLACE_DE_GITHUB]
cd mi-cv-devops
\`\`\`

**2. Construir la imagen de Docker:**
\`\`\`bash
docker build -t mi-cv .
\`\`\`

**3. Ejecutar el contenedor:**
\`\`\`bash
docker run -d -p 8080:80 mi-cv
\`\`\`

Una vez ejecutado, abre tu navegador y entra en `http://localhost:8080`.

## 👨‍💻 Sobre mí
Soy estudiante de Ingeniería Informática en Gijón, con gran interés en especializarme en automatización, despliegues e infraestructura Cloud.
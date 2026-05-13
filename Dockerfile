# Usamos la imagen oficial de MySQL 8.0 como base
FROM mysql:8.0

# Etiqueta de mantenimiento para buenas prácticas
LABEL maintainer="kamilox25"

# Copiamos el script de creación a la carpeta de inicialización automática de MySQL
# Estos archivos se ejecutan en orden alfabético al iniciar el contenedor por primera vez
COPY 01_creacion_base_datos.sql /docker-entrypoint-initdb.d/

# Exponemos el puerto estándar de MySQL
EXPOSE 3306
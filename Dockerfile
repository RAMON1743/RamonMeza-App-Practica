# Dockerfile

FROM python:3.9-slim

# Crear un directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo de dependencias y instalar las dependencias
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copiar todo el código de la aplicación al contenedor
COPY . .

# Expone el puerto 5000
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]

# Usa la imagen base oficial de Node.js
FROM node:16

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo package.json y package-lock.json (si existe) al contenedor
COPY package*.json ./

# Instala las dependencias de la aplicación
RUN npm install

# Copia todo el código de la aplicación al contenedor
COPY . .

# Expone el puerto 3000 para que sea accesible
EXPOSE 3000

# Define el comando para ejecutar la aplicación
CMD ["node", "index.js"]


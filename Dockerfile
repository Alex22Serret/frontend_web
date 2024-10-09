# Utiliza una imagen de Node.js 18
FROM node:18

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia solo los archivos de dependencias
COPY package*.json ./

# Instala las dependencias utilizando npm
RUN npm install

# Copia el resto de los archivos del proyecto al directorio de trabajo
COPY . .

# Expone el puerto 5173 para que sea accesible desde fuera del contenedor
EXPOSE 5173

# Establece las variables de entorno VITE_HOST y VITE_PORT test8
ENV VITE_HOST=0.0.0.0 \
    VITE_PORT=5173

# Inicia la aplicación con el comando predeterminado de npm
CMD ["npm", "run", "dev"]

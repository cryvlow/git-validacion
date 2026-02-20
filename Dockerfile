# Imagen base oficial
FROM node:18-alpine

# Directorio de trabajo
WORKDIR /app

# Copiar archivos
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar todo el proyecto
COPY . .

# Puerto de la aplicación
EXPOSE 3000

# Comando de inicio
CMD ["node", "app.js"]
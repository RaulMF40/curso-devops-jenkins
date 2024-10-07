# Usar la imagen base de Node.js
FROM node:22.9.0-alpine

# Crear un directorio de trabajo
WORKDIR /opt/

# Copiar el package.json al contenedor
COPY package.json .

# Instalar dependencias
RUN npm install

# Copiar el resto del código al contenedor
COPY . .

# Ejecutar los tests antes de exponer el puerto
RUN npm test -- --passWithNoTests

# Exponer el puerto que la API utilizará
EXPOSE 3000

# Comando por defecto para ejecutar la API
CMD ["npm", "run", "start"]

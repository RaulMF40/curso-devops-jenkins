# Selecciona la base de mi contenedor
# FROM ubuntu:10.04
# PESO DE 2GB
#FROM node:22.9.0
# PESO de 250MB
FROM node:22.9.0-alpine
 
#Ejecutar comandos de la terminal
#RUN apt-get install <package-name>

COPY package.json / opt/

# en caso de tener nuestro codigo en typescript
RUN npm run build

RUN npm test 

RUN npm install

WORKDIR /opt/

EXPOSE 3000

CMD ["npm", "run", "start"]

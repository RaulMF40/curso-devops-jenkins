# curso-devops-jenkins

Ejercicio 4. día 1/10/24.

Pasos

1. Tener un repo nuevo que se llame curso-devops-jenkins Si ya teneis repo para jenkins no hace falta crear uno nuevo.
2. Nos clonamos en local este repo
3. Pegamos las carpetas src y tests y los archivos jest.config.js, package.json y README.md del proyecto base.
4. Creamos nuestro Jenkinsfile
   4.1) Necesitamos tener 2 stages. Uno para hacer instalación de dependencias y otro para ejecutar los tests
   4.2) Recordad poner una tool de nodejs que se llama 'nodejs-18'
   4.3) También debemos poner los triggers necesarios...
5. Configurar nuestro repositorio para que ejecute un webhook cada vez que haya un evento nuevo. Recordad el formato de la url... /github.......
6. Una vez configurado el webhook nos vamos a jenkins
7. En jenkins creamos nuestro job con el template de pipeline
8. Recordad que en las opciones que nos da a continuación en 'Build triggers' debemos seleccionar Github SCM...
9. En el apartado de 'Pipeline' debemos introducir la URL del repositorio y MUY IMPORTANTE el escribir la rama donde vamos a hacer los cambios

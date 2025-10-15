- Primeramente, levanto la maquina con vagrant up
![Vagrant up](images\Captura4.PNG)
# DNS Paso a Paso

Este proyecto implementa un servidor DNS básico en Python. Permite la resolución de nombres de dominio a direcciones IP y viceversa, siguiendo los pasos detallados en el archivo `bootstrap.sh`.

## Creacion de archivos
Tengo que crear lo gitignore para ignorar ciertos comandos y omitir su commit, bootstrap.sh, Vagrantfile.

Iniciar Git:
![Iniciar Git](images\Captura.png)

Crear Vagrantfile:
![Vagrantfile](images\Captura1.png)

- Añadimos una carpeta config/ que la vamos a utilizar para copiar los archivos necesarios para provisionar el servicio.

## Inicializar repositorio Git
Creo bootstrap.sh:
![bootsrap](images\Captura2.png)

## Configuraciones DNS
En config/, tengo que crear 4 ficheros donde tengo que crear las rutas de mi dominio.

- named.conf.options: sirve para saber como se comporta el servidor DNS globalmente, es decir, el DNS BIND9

- named.conf.local: para configurar las zonas (dominios) que el servidor DNS va a gestionar.

- David.test.dns: es un nombre de dominio reservado y no está destinado al uso público en Internet. Es parte del espacio de nombres de prueba de DNS para la creación y pruebas de aplicaciones y sistemas que interactúan con el DNS.

- David.test.rev: Combierte direcciones IP en nombres de dominio.

## Verificar configuraciones
Voy a verificar los archivos y configuraciones que he hecho recientemente, para ello, tengo que meterme en la maquina virtual con el comando vagrant ssh
![Vagrant ssh](images\Captura4.png)

- Me aseguro que tengo el bind9 corriendo.
![bind9](images\Captura5.png)

- Apunte importante, he estado horas y horas buscando un error y era que local me estaba buscando una direccion super rara que no habia puesto, supongo que lo habia cogido de la red o algo no lo se, lo he conseguidop arreglar sustituyendolo y poniendolo por las mias. Los sudos que hay en los test si los quito no me funciona porque si los pongo sueltos en la maquina se me queda pillado asi que no se como arrglarlo mejor.

- Con el comando nslookup debian.david.test 192.168.56.10
![ComprobacionFinal](images\Captura6.png)
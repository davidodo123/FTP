## Cambiar alias a ftp por dns

Quiero que cuando alguien busque ftp.david.test, el DNS responda con la misma IP que ns.david.test
Hago un sudo nano /etc/bind/db.david.test y añado ftp     IN      CNAME   ns al final de la linea

## Uso del cliente FTP gráfico

Crear en el escritorio carpeta pruebaFTP.
Crear dentro archivo datos1.txt


Me instalo Filezilla porque la práctica me pide que use un cliente FTP gráfico para conectarme a un servidor FTP remoto y hacer pruebas de conexión, descarga y subida de archivos.

En la parte superior izquierda, hay que rellenar los datos de Servidor, nombre de usuario, contraseña (en este caso vacia) y puerto con ftp.cica.es como servidor, anonymous como usuario y 21 como puerto. Luego le das a Conexion Rapida.


Te tendra que salir esto si es exitosa la conexion.

En la parte derecha,esta la conexion con pub, dentro hay que buscar el archivo check. Asegurate de estar tambien en el lado izquierodo con la carpeta pruebaFTp, luego le das a descargar al archivo de chexk y tiene que haber transferencia completada.

Ahora tienes que tener en tu carpeta pruebaFTp, tanto datos1.txt como check.

Luego intenta subir el archivo datos1.txt a pub, te tendra que dar error. Despues desconecta el servidor.



## Instalación y comprobación de vsftpd

Actualizo el sistema e instalo el servicio. 
Primero hago sudo install apt para actualizarlo, tarda un poco.

Luego sudo apt install -y vsftpd para instalarlo. Tambien comrpuebo si esta iniciado el servicio.

Compruebo que el usuario este iniciado. 

Efectivamente esta corriendo.


Tambien hago lo mismo para los grupos.

Compruebo los usuarios bloqueados.

Tambien compruebo el puerto 21 si el servidor lo está escuchando.

Hago una copia de seguridad.

Creo los 3 usuarios locales maria, miguel y luis con sudo useradd -m <usuario>. 

Creo 3 ficheros de pruebas para los usuarios locales.

En este paso se ha modificado el archivo de configuración /etc/vsftpd.conf para personalizar el funcionamiento del servidor FTP.
Se han habilitado los accesos de usuarios locales y anónimos, configurado los permisos de lectura y escritura, establecido límites de velocidad, definido mensajes de bienvenida y activado el modo chroot para que los usuarios locales queden confinados en su directorio personal.

Luego excluyo a Mario del chroot
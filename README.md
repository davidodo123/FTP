## Cambiar alias a ftp por dns

Quiero que cuando alguien busque ftp.david.test, el DNS responda con la misma IP que ns.david.test
Hago un sudo nano /etc/bind/db.david.test y añado ftp     IN      CNAME   ns al final de la linea

## Instalación y comprobación de vsftpd

Actualizo el sistema e instalo el servicio. 
Primero hago sudo install apt para actualizarlo, tarda un poco.

Luego sudo apt install -y vsftpd para instalarlo.

Compruebo que el servicio este activo. 

Efectivamente esta corriendo.


## Uso del cliente FTP gráfico

Crear en el escritorio carpeta pruebaFTP.
Crear dentro archivo datos1.txt


Me instalo Filezilla porque la práctica me pide que use un cliente FTP gráfico para conectarme a un servidor FTP remoto y hacer pruebas de conexión, descarga y subida de archivos.

En la parte superior izquierda, hay que rellenar los datos de Servidor, nombre de usuario, contraseña (en este caso vacia) y puerto con ftp.cica.es como servidor, anonymous como usuario y 21 como puerto. Luego le das a Conexion Rapida.



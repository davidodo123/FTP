## Cambiar alias a ftp por dns

Quiero que cuando alguien busque ftp.david.test, el DNS responda con la misma IP que ns.david.test
Hago un sudo nano /etc/bind/db.david.test y añado ftp     IN      CNAME   ns al final de la linea

## Instalación y comprobación de vsftpd

Actualizo el sistema e instalo el servicio. 
Primero hago sudo install apt para actualizarlo, tarda un poco.

Luego sudo apt install -y vsftpd para instalarlo.

Compruebo que el servicio este activo. 

Efectivamente esta corriendo.

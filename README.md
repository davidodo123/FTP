## Cambiar alias a ftp por dns

Quiero que cuando alguien busque ftp.david.test, el DNS responda con la misma IP que ns.david.test
Hago un sudo nano /etc/bind/db.david.test y añado ftp     IN      CNAME   ns al final de la linea
![Cambiaralias](images/cambiar alias.png)

## Uso del cliente FTP gráfico

Crear en el escritorio carpeta pruebaFTP.
Crear dentro archivo datos1.txt
![CrearpruebaFTP](images/crear practicaFTp.png)

Me instalo Filezilla porque la práctica me pide que use un cliente FTP gráfico para conectarme a un servidor FTP remoto y hacer pruebas de conexión, descarga y subida de archivos.
![Creardatos1.txt](images/Crear archivo datos1.png)

En la parte superior izquierda, hay que rellenar los datos de Servidor, nombre de usuario, contraseña (en este caso vacia) y puerto con ftp.cica.es como servidor, anonymous como usuario y 21 como puerto. Luego le das a Conexion Rapida.
![NombreServidor](images/Nombre servidor.png)

Te tendra que salir esto si es exitosa la conexion.
![Conexión FTP exitosa](images/ConexionExitosa.png)

En la parte derecha,esta la conexion con pub, dentro hay que buscar el archivo check. Asegurate de estar tambien en el lado izquierodo con la carpeta pruebaFTp, luego le das a descargar al archivo de check y tiene que haber transferencia completada.
![SubirArchivoCheck](images/Archivo check.png)

Ahora tienes que tener en tu carpeta pruebaFTp, tanto datos1.txt como check.
![Verificar](images/Comprobar%20check%20en%20carpeta.png)

Luego intenta subir el archivo datos1.txt a pub, te tendra que dar error. Despues desconecta el servidor.
![ErrorDatos1.txt](images/subir datos1.txt.png)


## Instalación y comprobación de vsftpd

Actualizo el sistema e instalo el servicio. 
Primero hago sudo install apt para actualizarlo, tarda un poco.
![InstallApt](images/sudo install apt.png)

Luego sudo apt install -y vsftpd para instalarlo. Tambien comrpuebo si esta iniciado el servicio.
![InstallarVsftp](images/instalar vsftpd.png)

Compruebo que el usuario este iniciado. 
![Conexión FTP exitosa](images/el usuario existe perfectamente.png)

Efectivamente esta corriendo.
C:\Users\Usuario\Desktop\Practica FTP\images\segunda verificacion de usuario.png
Tambien hago lo mismo para los grupos.
![Grupos](images/grupos de usuarios.png)

Compruebo los usuarios bloqueados.
![Bloqueados](images/comprobar usuarios bloqueados.png)

Tambien compruebo el puerto 21 si el servidor lo está escuchando.
![Puerto21](images/Compruebo el puerto 212.png)

Hago una copia de seguridad.
![CopiaSeguridad](images/Copia de seguridad.png)

Creo los 3 usuarios locales maria, miguel y luis con sudo useradd -m <usuario>. 
![3Usuarios](images/Creo los 3 usuarios.png)

Creo 3 ficheros de pruebas para los usuarios locales.
![Ficheros3Usuarios](images/Creo 3 ficheros de prueba.png)

En este paso se ha modificado el archivo de configuración /etc/vsftpd.conf para personalizar el funcionamiento del servidor FTP.
Se han habilitado los accesos de usuarios locales y anónimos, configurado los permisos de lectura y escritura, establecido límites de velocidad, definido mensajes de bienvenida y activado el modo chroot para que los usuarios locales queden confinados en su directorio personal.
![Modificacion](images/Modificar archivos.png)

Luego excluyo a Mario del chroot
![ExcluirMaria](images/Excluir a Maria.png)

Reinicio el servicio y compruebo si esta bien.
![Reinicio](images/Reinicio la maquina.png)

Verifico el servicio y me vuelvo a conectar en FileZilla con mi servidor.
![ConectarDeNuevo](images/conectar al fileezilla de nuevo.png)

En FileZilla me descargo luis.txt y subo datos1.txt para ver si está bien.
![SubidaDescarga](images/subida de datos.png)

Vuelvo a abrir la lista de bloqueados y meto a Maria, luego me voy a FileZilla y me meto al servidor como maria. Y como puedo observar, estaría bien ya que me da error.
![PantallaBloqueada](images/maria bloqueada.png)

## Configuración servidor

Procedo a crear el certificado SSL para FTPS. Me pedira rellenar los datos.
![ConfigurarVsftpd](images/Configurar vsftpd para usar FTPS.png)

Configurar vsftpd para usar FTPS editando el archivo de configuracion.
![CrearConfiguracion](images/Crear confi.png)

Reinicio el servicio y compruebo el puerto si sigue cogiendo el 21.
![CoprobarPuerto21](images/Vuelvo a comprobar el puerto.png)

Vuelvo a Filezilla, inicio el servidor como ftp.david.test y me descargo y subo algun archivo, enefecto la transferencia es correcta.
![SubidaDescargarx2](images\Vuelvo a subir y descargar.png)
# SeqTools

<h3>Checkfolder.sh</h3>
Script que se encarga de recorrer todos los elementos de una carpeta y de comprobar si alguno aparece en un fichero con los nombres de los archivos de un directorio de la NAS (lista sacada manuelamente usando el comando "ls" o "rsync"). 
En el caso de que no lo encuentre, comprimirá y subirá la carpeta a la NAS.

Al principio del script hay que meter la información oportuna de las siguientes variables:
<ul>
  <li>path=" " -> ruta del directorio que hay que recorrer
  <li>runsFile=" " -> ruta del fichero que contiene la lista de nombres de la NAS
  <li>rutaNas=" " -> ruta de la NAS donde se subira la carpeta comprimida
  <li>username=" " -> nombre de usuario de la NAS para realizar la conexion
  <li>password=" " -> contraseña del usuario
</ul>

<h2>Lanzar Script</h2>
Darle permisos de ejecución -> chmod +x checkfolder.sh <br>
Ejecutar script -> ./checkfolder.sh

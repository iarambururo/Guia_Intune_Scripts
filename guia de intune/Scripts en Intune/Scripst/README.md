## botonWordDinaiz.ps1

este script es para crear el boton que habilita los scripts en word

![botonWord](../img/word/botonWord.png)

Para automatizar ese proceso, he copiar el contenido del fichero generado al exportar la configuración en Word. Es importante destacar que este enfoque requiere que estemos trabajando en un Word que ya esté configurado previamente.

para exportar la configuracion tenemos que ir a 

Archivo > opciones > Barra de herramientas de acceso Rápido > Importar o exportar

Luego, simplemente copio el contenido del fichero recién exportado a la variable `$content` y creo un fichero con el mismo nombre que el archivo predeterminado "Word.officeUI", donde inserto el contenido de la variable en ese fichero.

La ruta de la configuracion esta en:
```
C:\Users\$username\AppData\Local\Microsoft\Office\Word.officeUI
```
 ## excelComplemento(NO FUNCIONA).ps1

 este script no funciona y no entiendo por que.

 ## fondoTeams.ps1

Con este script, automatizamos la configuración del fondo de Teams para las llamadas. Es importante destacar que no establecemos directamente el fondo, sino que copiamos la imagen a la ruta donde Teams guarda las imágenes de fondos personalizados. Para que el usuario final lo pueda selecionar.

La ruta donde guarda los fondos es:
```
C:\Users\$username\AppData\Roaming\Microsoft\Teams\Backgrounds\Uploads\
```
## plantillasDinaiz.ps1

con este script cambiamos el registro `HKCU:\Software\Microsoft\Office\16.0\Common\General\UserTemplates` y `HKCU:\Software\Microsoft\Office\16.0\Common\General\SharedTemplates` para que las macros en Word funcionen, cambiando estos registros estamos cambiando los campos de `Plantillas personalizadas` y `Plantillas de grupo`.

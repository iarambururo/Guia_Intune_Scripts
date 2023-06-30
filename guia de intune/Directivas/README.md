Dispositivos | Configuración
https://endpoint.microsoft.com/#view/Microsoft_Intune_DeviceSettings/DevicesMenu/~/configuration

## ONE DRIVE

Para lograr la sincronización automática de OneDrive, es necesario aplicar las directivas. Para crear una directiva, accedemos al enlace ubicado en la parte superior y seleccionamos la opción "Crear Perfil".
![crearDirectiva](img/OneDrive_crearDirectiva.png)
Al seleccionar "Crear Perfil", aparecerá una ventana emergente en la cual debemos especificar los siguientes detalles: en el campo **Plataforma**, elegiremos "Windows 10 y versiones posteriores", y en el campo **Tipo de perfil**, seleccionaremos "Catálogo de configuración".
![CrearUnPerfil](img/OneDrive_CrearUnPerfil.png)
Una vez que hayamos configurado estas opciones, hacemos clic en "Crear" y pasaremos a la siguiente pantalla.

En esta etapa, ingresamos el nombre con el que deseamos identificar la directiva y proporcionamos una breve descripción.
![OneDrive_nombrePerfil](img/OneDrive_nombrePerfil.png)

ahora tenemos que pulsar en  **Agregar configuración** y buscar "OneDrive" en el buscador


![OneDrive_AgregarConfiguracion](img/OneDrive_AgregarConfiguracion.png)

En esta sección, debemos buscar las siguientes opciones:

- Allow syncing OneDrive accounts for only specific organizations.
- Set the sync app update ring
- Silently move Windows known folders to OneDrive
- Silently sign in users to the OneDrive sync app with their Windows credentials
- Use OneDrive Files On-Demand

Para configurar algunas de estas opciones, necesitaremos el **Tenant ID** de la organización. Para obtenerlo, simplemente accedemos al Active Directory y lo copiamos tal como se muestra en la imagen.

![Tenant ID](img/OneDrive_Tenant_ID.png)


A continuación, explicaré brevemente para qué sirve cada opción y cómo se configura.

### Allow syncing OneDrive accounts for only specific organizations. (no es indispensable)

Esta configuración te permite evitar que los usuarios suban fácilmente archivos a otras organizaciones al especificar una lista de ID de inquilinos permitidos. Si habilitas esta configuración, los usuarios recibirán un error si intentan agregar una cuenta de una organización no permitida. Si un usuario ya ha agregado la cuenta, los archivos dejarán de sincronizarse. Si deshabilitas o no configuras esta configuración, los usuarios podrán agregar cuentas de cualquier organización. Para bloquear organizaciones específicas, utiliza "Bloquear la sincronización de cuentas de OneDrive para organizaciones específicas". Esta configuración tendrá prioridad sobre "Bloquear la sincronización de cuentas de OneDrive para organizaciones específicas". No habilites ambas políticas al mismo tiempo.

## Set the sync app update ring (no es indispensable)

as actualizaciones de la aplicación de sincronización de OneDrive (OneDrive.exe) se lanzan al público a través de tres anillos: primero, Insiders; luego, Production; y finalmente, Deferred. Esta configuración te permite especificar la versión de la aplicación de sincronización para los usuarios de tu organización. Cuando habilitas esta configuración y seleccionas un anillo, los usuarios no podrán cambiarlo. Los usuarios en el anillo Insiders recibirán versiones que les permiten obtener un avance de las nuevas funciones que llegarán a OneDrive. Los usuarios en el anillo Production recibirán las últimas características a medida que estén disponibles. Los usuarios en el anillo Deferred recibirán las nuevas funciones, correcciones de errores y mejoras de rendimiento en último lugar. Este anillo te permite implementar actualizaciones desde una ubicación de red interna y controlar el momento de la implementación (dentro de una ventana de 60 días). Si deshabilitas o no configuras esta configuración, los usuarios recibirán las actualizaciones de la aplicación de sincronización de OneDrive cuando estén disponibles en el anillo Production. Los usuarios pueden unirse a los programas Office o Windows Insiders para recibir actualizaciones en el anillo Insiders.

## Silently move Windows known folders to OneDrive

Esta configuración permite la sincronización automática de las carpetas de Escritorio, Documentos e Imágenes sin la intervención del usuario. Además, se puede mostrar una notificación para informar al usuario cuando estas carpetas se hayan sincronizado exitosamente.


![Silently move](img/OneDrive_Silently_move.png)

## Silently sign in users to the OneDrive sync app with their Windows credentials











#Este script copia el fondo de la ruta y lo pega donde Temas guarda las rutas

$username = $env:USERNAME #obtenemos el usuario
#ruta del fondo
$Fichero = "C:\Users\$username\SmartLOG Services S.L\SL - DOC\Z1_Generales\MAD-A.- Imagen Corporativa\2.- Banners\2023_Nuevo\Teams\fondo_call_01_claim_es.png"

#ruta donde se guardan los fondos en Teams
$Destino = "C:\Users\$username\AppData\Roaming\Microsoft\Teams\Backgrounds\Uploads\"

#comprobamos si la carpeta existe y ni no existe creamos la carpeta 
if (-not (Test-Path -Path $Destino -PathType Container)) {
    New-Item -Path $Destino -ItemType Directory | Out-Null
    Write-Host "La carpeta se ha creado exitosamente."
} else {
    Write-Host "La carpeta ya existe."
}

Copy-Item -Path $Fichero -Destination $Destino



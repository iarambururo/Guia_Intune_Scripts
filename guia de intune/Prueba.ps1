$username = $env:USERNAME
$Fichero = "C:\Users\$username\Downloads\MicrosoftTeams-image (1).png"
$FicheroDestino ="fondo.jpg"
$Destino = "C:\Users\$username\AppData\Roaming\Microsoft\Teams\Backgrounds\Uploads\"



$FolderPath = "C:\Users\$username\AppData\Roaming\Microsoft\Teams\Backgrounds\Uploads"

if (-not (Test-Path -Path $FolderPath -PathType Container)) {
    New-Item -Path $FolderPath -ItemType Directory | Out-Null
    Write-Host "La carpeta se ha creado exitosamente."
} else {
    Write-Host "La carpeta ya existe."
}

Copy-Item -Path $Fichero -Destination $Destino


#Invoke-WebRequest $Fichero -OutFile $Destino

$username = $env:USERNAME
$folderPath = "C:\Users\$username\AppData\Local\Microsoft\Office"
$filePath = Join-Path $folderPath "Word.officeUI"

# Verificar si la carpeta de destino existe, y crearla si no existe
if (!(Test-Path -Path $folderPath)) {
    New-Item -ItemType Directory -Path $folderPath | Out-Null
}

# Contenido del archivo Word.officeUI
$content = @"
<mso:customUI xmlns:x1="http://schemas.microsoft.com/office/2009/07/customui/macro" xmlns:mso="http://schemas.microsoft.com/office/2009/07/customui">
    <mso:ribbon>
        <mso:qat>
            <mso:sharedControls>
                <mso:control idQ="mso:AutoSaveSwitch" visible="false"/>
                <mso:control idQ="mso:FileOpenUsingBackstage" visible="false" insertBeforeQ="mso:FileNewDefault"/>
                <mso:control idQ="mso:FileSendAsAttachment" visible="false" insertBeforeQ="mso:FileNewDefault"/>
                <mso:control idQ="mso:FilePrintQuick" visible="false" insertBeforeQ="mso:FileNewDefault"/>
                <mso:control idQ="mso:PrintPreviewAndPrint" visible="false" insertBeforeQ="mso:FileNewDefault"/>
                <mso:control idQ="mso:WritingAssistanceCheckDocument" visible="false" insertBeforeQ="mso:FileNewDefault"/>
                <mso:control idQ="mso:Undo" visible="true" insertBeforeQ="mso:FileNewDefault"/>
                <mso:control idQ="mso:RedoOrRepeat" visible="true" insertBeforeQ="mso:FileNewDefault"/>
                <mso:control idQ="mso:TableDrawTable" visible="false" insertBeforeQ="mso:FileNewDefault"/>
                <mso:control idQ="mso:PointerModeOptions" visible="false" insertBeforeQ="mso:FileNewDefault"/>
                <mso:control idQ="mso:FileNewDefault" visible="false"/>
                <mso:control idQ="mso:FileSave" visible="true"/>
                <mso:control idQ="mso:ReadAloud" visible="false"/>
                <mso:button idQ="x1:f_xAnadirRibbonYMacros_1" visible="true" label="Normal.NewMacros.f_xAnadirRibbonYMacros" imageMso="AppointmentColor3" onAction="f_xAnadirRibbonYMacros"/>
            </mso:sharedControls>
        </mso:qat>
    </mso:ribbon>
</mso:customUI>
"@

# Crear el archivo Word.officeUI y escribir el contenido
$content | Out-File -FilePath $filePath -Encoding UTF8

# Verificar si se creó correctamente el archivo
if (Test-Path -Path $filePath) {
    Write-Host "Se ha creado el archivo Word.officeUI en la ubicación: $filePath"
} else {
    Write-Host "No se pudo crear el archivo Word.officeUI."
}

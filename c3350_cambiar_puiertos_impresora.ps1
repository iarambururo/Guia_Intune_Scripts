# nombre de la impresora
$nombreImpresora = "c3350"

#### PUERTO ####

$portName = "konica_c3350"
$printerIP = "192.168.23.13"
$portNumber = "9100"

# Verificar si el puerto ya existe
$existingPort = Get-WmiObject -Query "Select * From Win32_TCPIPPrinterPort Where Name = '$portName'"
if ($existingPort) {
    Write-Host "El puerto $portName ya existe. Se procederá a eliminarlo."
    Remove-WmiObject -InputObject $existingPort
}

# Crear el nuevo puerto
Add-PrinterPort -Name $portName -PrinterHostAddress $printerIP -PortNumber $portNumber 
Write-Host "El puerto $portName ha sido creado correctamente."


#####################



# Verifica si la impresora existe
$impresora = Get-WmiObject -Query "Select * From Win32_Printer WHERE Name LIKE '%$nombreImpresora%'"


if (!$impresora) {
    Write-Host "No se encontró la impresora con el nombre '$nombreImpresora'."
} else {
    for($i=0;$i -lt $impresora.Length;$i++){
        $impresora[$i].PortName = $portName
        $impresora[$i].Put()
    }


    # Establecer la impresora como predeterminada
   

    # Envía una tarea de impresión (una página en blanco)
    $printer = Get-WmiObject -Query "Select * From Win32_Printer WHERE Name LIKE '%$nombreImpresora%'"
    $printer.PrintTestPage()
    
    Write-Host "Se ha enviado una página en blanco a la impresora $nombreImpresora."

}


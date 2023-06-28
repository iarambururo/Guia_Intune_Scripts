$regPath = "HKCU:\Software\Microsoft\Office\16.0\Excel\Options"
$username = $env:USERNAME

$OPEN = "C:\Users\$username\SmartLOG Services S.L\DINAIZ - DOC\Z1_Generales\QSA-D.- Sistemas\1.- Utilidades OFFICE\config\Excel\MAC_EXCEL_DINAIZ.xlam"

Set-ItemProperty -Path $regPath -Name "OPEN" -Value $OPEN


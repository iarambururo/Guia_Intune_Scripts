$regPath = "HKCU:\Software\Microsoft\Office\16.0\Common\General"
$username = $env:USERNAME

$userTemplatesPath = "C:\Users\$username\SmartLOG Services S.L\DINAIZ - DOC\Z1_Generales\QSA-D.- Sistemas\1.- Utilidades OFFICE\Plantillas\"
$SharedTemplatesPath = "C:\Users\$username\SmartLOG Services S.L\DINAIZ - DOC\Z1_Generales\QSA-D.- Sistemas\1.- Utilidades OFFICE\Plantillas\"

Set-ItemProperty -Path $regPath -Name "UserTemplates" -Value $userTemplatesPath
Set-ItemProperty -Path $regPath -Name "SharedTemplates" -Value $SharedTemplatesPath

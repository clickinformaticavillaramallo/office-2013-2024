# Instalacion automatica de office-2013-2024
$ErrorActionPreference = "Stop"
# Descarga de instaladores de Office x32/x64
$urls = @(
    "https://github.com/clickinformaticavillaramallo/office-2013-2024/raw/main/Office.2013-2024%20x32.exe",
    "https://github.com/clickinformaticavillaramallo/office-2013-2024/raw/main/Office.2013-2024%20x64.exe"
)
$i = 1
foreach ($u in $urls) {
    $o = "$env:TEMP\office_install_$i.exe"
    Write-Host "Descargando $u ..."
    Invoke-WebRequest $u -OutFile $o
    Start-Process $o -Args "/S" -Wait
    $i++
}
Write-Host "Descargando instalador C2R (OInstall) ..."
$c2r = "$env:TEMP\OInstall.exe"
Invoke-WebRequest "https://raw.githubusercontent.com/OffiC2R/Office-C2R-Installer/main/OInstall.exe" -OutFile $c2r
Start-Process $c2r


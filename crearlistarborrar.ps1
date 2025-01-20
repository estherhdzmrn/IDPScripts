# Ruta de la carpeta
$folderPath = "C:\Actividad2"

# Crear la carpeta si no existe
if (-not (Test-Path -Path $folderPath)) {
    New-Item -ItemType Directory -Path $folderPath
    Write-Host "Carpeta creada: $folderPath"
}

# Crear tres archivos de ejemplo en la carpeta
New-Item -ItemType File -Path "$folderPath\Actividad2-1.txt" -Force
New-Item -ItemType File -Path "$folderPath\Actividad2-2.txt" -Force
Write-Host "Archivos creados en $folderPath"

# Listar los archivos de la carpeta
Write-Host "Listo los archivos que existen en $folderPath :"
Get-ChildItem -Path $folderPath

# Eliminar los archivos de la carpeta
Remove-Item -Path "$folderPath\*.txt" -Force
Write-Host "Archivos eliminados."

param (
    [Parameter(Mandatory = $true)]
    [string]$programa
)

# Ejecutar el programa
Start-Process $programa

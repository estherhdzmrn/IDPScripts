# Umbral de memoria en MB
$umbral = 200

# Buscar y finalizar procesos que superen el umbral
Get-Process | Where-Object { $_.WorkingSet64 / 1MB -gt $umbral } | ForEach-Object {
    Write-Host "Finalizando $($_.ProcessName) (ID: $($_.Id)) - $([math]::Round($_.WorkingSet64 / 1MB, 2)) MB"
    Stop-Process -Id $_.Id -Force -ErrorAction SilentlyContinue
}

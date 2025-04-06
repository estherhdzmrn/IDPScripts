# Obtener todos los servicios
$servicios = Get-Service

# Contar total, en ejecución y detenidos
$total = $servicios.Count
$running = ($servicios | Where-Object Status -eq 'Running').Count
$stopped = ($servicios | Where-Object Status -eq 'Stopped').Count

# Mostrar resultados de forma clara

Write-Host "     ESTADO DE SERVICIOS     "
Write-Host " Total de servicios : $total"
Write-Host " En ejecución       : $running"
Write-Host " Detenidos          : $stopped"


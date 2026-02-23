#1

[int]$totalSegundos = Read-Host "Introduza o total de segundos"

$horas = [math]::Floor($totalSegundos / 3600)
$minutos = [math]::Floor(($totalSegundos % 3600) / 60)
$segundos = $totalSegundos % 60

Write-Host "$horas hora(s), $minutos minuto(s) e $segundos segundo(s)."


#2

[int]$num1 = Read-Host "Introduza o 1º número"
[int]$num2 = Read-Host "Introduza o 2º número"
[int]$num3 = Read-Host "Introduza o 3º número"

$maior = ($num1, $num2, $num3 | Measure-Object -Maximum).Maximum
$menor = ($num1, $num2, $num3 | Measure-Object -Minimum).Minimum

Write-Host "Maior: $maior"
Write-Host "Menor: $menor"


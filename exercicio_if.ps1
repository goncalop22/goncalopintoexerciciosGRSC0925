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

#3

[int]$num1 = Read-Host "Introduza o 1º número"
[int]$num2 = Read-Host "Introduza o 2º número"

$crescente = ($num1, $num2 | Sort-Object) -join ", "
$decrescente = ($num1, $num2 | Sort-Object -Descending) -join ", "

Write-Host "Crescente: $crescente"
Write-Host "Decrescente: $decrescente"


#4
[double]$saldo = Read-Host "Introduza o saldo da conta"
[double]$cheque = Read-Host "Introduza o valor do cheque"

if ($cheque -le $saldo) {
    $saldo -= $cheque
    Write-Host "Cheque descontado, saldo: $saldo"
} else {
    Write-Host "O cheque não pode ser descontado (saldo insuficiente)."
}

#5
[int]$num1 = Read-Host "Introduza o 1º número"
[int]$num2 = Read-Host "Introduza o 2º número"
[int]$num3 = Read-Host "Introduza o 3º número"

$crescente = ($num1, $num2, $num3 | Sort-Object) -join ", "
$decrescente = ($num1, $num2, $num3 | Sort-Object -Descending) -join ", "

Write-Host "Crescente: $crescente"
Write-Host "Decrescente: $decrescente"

#6
$cliente = Read-Host "Introduza o nome do cliente"
[double]$compra = Read-Host "Introduza o valor da compra"

if ($compra -le 200) { 
    $taxa = 0.10 
} elseif ($compra -le 500) { 
    $taxa = 0.15 
} else { 
    $taxa = 0.20 
}

$desconto = $compra * $taxa
$total = $compra - $desconto

Write-Host "Nome: $cliente"
Write-Host "Compra: $($compra.ToString('0.00'))€"
Write-Host "Desconto: $($desconto.ToString('0.00'))€"
Write-Host "Total a pagar: $($total.ToString('0.00'))€"

#7
[double]$nota1 = Read-Host "Introduza a 1ª nota (peso 2)"
[double]$nota2 = Read-Host "Introduza a 2ª nota (peso 3)"
[double]$nota3 = Read-Host "Introduza a 3ª nota (peso 5)"

$media = (($nota1 * 2) + ($nota2 * 3) + ($nota3 * 5)) / 10

Write-Host "Média: $($media.ToString('0.0'))"

if ($media -ge 6) { 
    Write-Host "Aprovado" 
} else { 
    Write-Host "Reprovado" 
}


#8
$notas = @()

for ($i = 1; $i -le 10; $i++) {
    [double]$nota = Read-Host "Introduza a nota do aluno $i (0 a 20)"
    $notas += $nota
}

$media = ($notas | Measure-Object -Average).Average
$acimaMedia = ($notas | Where-Object { $_ -ge $media }).Count

Write-Host "Média da turma: $($media.ToString('0.0'))"
Write-Host "Número de alunos com nota igual ou acima da média: $acimaMedia"


#9
[int]$mes = Read-Host "Introduza o número do mês (1 a 12)"

switch ($mes) {
    1 { "Janeiro"; break }
    2 { "Fevereiro"; break }
    3 { "Março"; break }
    4 { "Abril"; break }
    5 { "Maio"; break }
    6 { "Junho"; break }
    7 { "Julho"; break }
    8 { "Agosto"; break }
    9 { "Setembro"; break }
    10 { "Outubro"; break }
    11 { "Novembro"; break }
    12 { "Dezembro"; break }
    default { "Erro: Número inválido. Introduza um valor entre 1 e 12." }
}

#10
$pares = 0
$impares = 0

for ($i = 1; $i -le 10; $i++) {
    [int]$num = Read-Host "Introduza o $i º número"
    
    if ($num % 2 -eq 0) { 
        $pares++ 
    } else { 
        $impares++ 
    }
}

Write-Host "Pares: $pares"
Write-Host "Ímpares: $impares"




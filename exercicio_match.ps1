#1

$dia = Read-Host "Introduza o nome de um dia da semana"

switch ($dia.ToLower().Trim()) {
    { $_ -in 'sábado', 'domingo' } { "Fim de semana" }
    default { "Dia útil" }
}


#2

[int]$nota = Read-Host "Introduza uma nota de 0 a 100"

switch ($nota) {
    { $_ -ge 90 } { "Excelente"; break }
    { $_ -ge 70 } { "Bom"; break }
    { $_ -ge 50 } { "Suficiente"; break }
    default { "Insuficiente" }
}

#3
$tipo = Read-Host "Introduza o tipo de pedido (compra ou venda)"
[double]$valor = Read-Host "Introduza o valor do pedido"
$pedido = @{ "tipo" = $tipo; "valor" = $valor }

switch ($pedido.tipo.ToLower().Trim()) {
    'compra' { "Compra de $($pedido.valor)€" }
    'venda'  { "Venda de $($pedido.valor)€" }
    default  { "Pedido desconhecido" }
}

#4

$entrada = Read-Host "Introduza um valor qualquer (para lista use vírgulas, ex: 10,20)"

# Tentar adivinhar o tipo real introduzido
if ([int]::TryParse($entrada, [ref]$null)) { $valor = [int]$entrada }
elseif ([double]::TryParse($entrada.Replace(',', '.'), [ref]$null) -and $entrada -notmatch ",") { $valor = [double]($entrada.Replace(',', '.')) }
elseif ($entrada -match ",") { $valor = $entrada -split "," }
else { $valor = $entrada }

switch ($valor) {
    { $_ -is [int] } { "Número inteiro"; break }
    { $_ -is [double] -or $_ -is [decimal] } { "Número decimal"; break }
    { $_ -is [array] } { "Lista"; break }
    { $_ -is [string] } { "String textual"; break }
    default { "Tipo desconhecido" }
}

#5
$mensagem = Read-Host "Escreva uma mensagem"

switch -Regex ($mensagem.Trim().ToLower()) {
    '^(olá|bom dia)$' { "Saudação"; break }
    '\?$'             { "Pergunta"; break }
    'tchau|adeus'     { "Despedida"; break }
    default           { "Mensagem genérica" }
}

#6

$status = Read-Host "Introduza o status do servidor (ok ou erro)"
[int]$tempo = Read-Host "Introduza o tempo de resposta (em ms)"
$servidor = @{ "status" = $status; "tempo_resposta" = $tempo }

switch ($servidor.status.ToLower().Trim()) {
    'ok' {
        if ($servidor.tempo_resposta -gt 200) { "Servidor lento" }
        else { "Servidor ativo" }
    }
    'erro' { "Servidor indisponível" }
    default { "Estado desconhecido" }
}

#7
$categoria = Read-Host "Introduza a categoria (ex: eletrônico, alimento)"
[double]$preco = Read-Host "Introduza o preço do produto"
$produto = @{ "categoria" = $categoria; "preco" = $preco }

switch ($produto.categoria.ToLower().Trim()) {
    'eletrônico' {
        if ($produto.preco -gt 1000) { "Produto de luxo" }
        else { "Produto comum" }
    }
    'alimento' { "Produto alimentar" }
    default { "Categoria desconhecida" }
}

#8
$operacao = Read-Host "Introduza a operação (soma, subtrai, multiplica, divide)"
[double]$num1 = Read-Host "Introduza o primeiro número"
[double]$num2 = Read-Host "Introduza o segundo número"

switch ($operacao.ToLower().Trim()) {
    'soma'       { $num1 + $num2 }
    'subtrai'    { $num1 - $num2 }
    'multiplica' { $num1 * $num2 }
    'divide'     { 
        if ($num2 -eq 0) { "Erro: Divisão por zero" } 
        else { $num1 / $num2 } 
    }
    default      { "Operação desconhecida" }
}

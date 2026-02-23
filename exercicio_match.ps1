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



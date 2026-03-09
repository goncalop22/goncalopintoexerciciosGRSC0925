
#Exercicio 1 

Write-Host "--- A calcular os primeiros 30 números Pares e Ímpares ---" -ForegroundColor Green
Write-Host " --- Azul é par Amarelo é Impar --- " -ForegroundColor Red
# O loop For vai do 1 ao 60
for ($i = 1; $i -le 60; $i++) {
    
    # Se o resto da divisão por 2 for igual a 0, é PAR
    if ($i % 2 -eq 0) {
        Write-Host "O número $i é Par" -ForegroundColor Cyan
    } 
    # Se não for, é ÍMPAR
    else {
        Write-Host "O número $i é Ímpar" -ForegroundColor Yellow
    }
}

#Exercicio 2

Write-Host "--- Verifica Números Pares e Ímpares ---" -ForegroundColor Cyan # menu

# O loop repete 10 vezes
for ($i = 1; $i -le 10; $i++) {
    
    # Pede ao utilizador para digitar um número
    $numero = Read-Host "Digite o $i º número"
    
    # Converte o texto que o utilizador escreveu num número inteiro
    $numero = [int]$numero
    
    # É par
    if ($numero % 2 -eq 0) {
        Write-Host "O número $numero é par!" -ForegroundColor Green
    } 
    # se é impar
    else {
        Write-Host "O número $numero é impar!" -ForegroundColor Yellow
    }
    
    Write-Host "------------------------" 
}


#Exercício 3

Write-Host "--- Calcular de Média da Turma ---" -ForegroundColor Cyan

# variavel vaiza
$soma = 0

# O loop vai repetir para os 10 alunos
for ($i = 1; $i -le 10; $i++) {
    
    # Pede a nota ao aluno
    $nota = Read-Host "Digite a nota do aluno $i"
    
  
    # usar o double para ter 19.2, 10,4, etc...
    $nota = $nota
    
    # somar uma nota guardada na variavel e a nota nova adicionada
    $soma = $soma + $nota
}

# Calculo da média
$media = $soma / 10

Write-Host "------------------------"
Write-Host "A soma de todas as notas é: $soma" -ForegroundColor Yellow
Write-Host "A média final dos 10 alunos é: $media" -ForegroundColor Green 

# Exercício 4

# Read-Host pede o valor ao utilizador
$entrada = Read-Host "Introduza um numero inteiro"
$numero = $entrada # Temos de garantir que é tratado como número e não texto
$divisores = 0

for ($i = 1; $i -le $numero; $i++) {
    
    if ($numero % $i -eq 0) {
        $divisores++
    }
}

if ($divisores -eq 2) {
    Write-Host "E primo!" -ForegroundColor Green
} else {
    Write-Host "Nao e primo." -ForegroundColor Red
}

# Exercício 5
for ($i = 1; $i -le 10000; $i++) {
    Write-Host $i
}

#Exercício 6
$contadorPrimos = 0 
$numeroAtual = 2    

Write-Host "Os 10 primeiros numeros primos sao:"

while ($contadorPrimos -lt 10) {
    $divisores = 0
    
    for ($i = 1; $i -le $numeroAtual; $i++) {
        if ($numeroAtual % $i -eq 0) {
            $divisores++
        }
    }

    if ($divisores -eq 2) {
        Write-Host "$numeroAtual " -NoNewline 
        $contadorPrimos++ 
    }
    
    $numeroAtual++ 
}

#Exercicio 7
for ($i = 10; $i -le 1000; $i += 10) {
    Write-Host "$i "
}

#Exercício 8
Write-Host "Primeira serie:"
for ($i = 10; $i -le 1000; $i += 10) {
    Write-Host "$i " 
}
Write-Host "Segunda serie:"
for ($i = 15; $i -le 995; $i += 10) {
    Write-Host "$i " 
}
Write-Host ""

#Exercicio 9
do {
    $entrada = Read-Host "Introduza um numero entre 1 e 100"
    $numero = $entrada

    if ($numero -lt 1 -or $numero -gt 100) {
        Write-Host "Valor invalido! Tente novamente.`n" -ForegroundColor Red
    }
} while ($numero -lt 1 -or $numero -gt 100)

Write-Host "Perfeito! Introduziu o numero $numero." -ForegroundColor Green

#Exercicio 10
$entrada = Read-Host "Introduza um numero inteiro"
$numero = $entrada
$divisores = 0

for ($i = 1; $i -le $numero; $i++) {
    
    if ($numero % $i -eq 0) {
        $divisores++ 
    }
}

Write-Host "O numero $numero tem $divisores divisores." -ForegroundColor Cyan

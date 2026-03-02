
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
    $nota = [double]$nota
    
    # somar uma nota guardada na variavel e a nota nova adicionada
    $soma = $soma + $nota
}

# Calculo da média
$media = $soma / 10

Write-Host "------------------------"
Write-Host "A soma de todas as notas é: $soma" -ForegroundColor Yellow
Write-Host "A média final dos 10 alunos é: $media" -ForegroundColor Green 
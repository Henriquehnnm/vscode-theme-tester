# Calculadora simples no PowerShell

$primeiroNumero = Read-Host "Digite o primeiro número"
$operador = Read-Host "Digite o operador (+ - * /)"
$segundoNumero = Read-Host "Digite o segundo número"

if ($operador -eq "+") {
    $resultado = [double]$primeiroNumero + [double]$segundoNumero
} elseif ($operador -eq "-") {
    $resultado = [double]$primeiroNumero - [double]$segundoNumero
} elseif ($operador -eq "*") {
    $resultado = [double]$primeiroNumero * [double]$segundoNumero
} elseif ($operador -eq "/") {
    if ($segundoNumero -ne 0) {
        $resultado = [double]$primeiroNumero / [double]$segundoNumero
    } else {
        Write-Host "Erro: divisão por zero!"
        exit
    }
} else {
    Write-Host "Operador inválido!"
    exit
}

Write-Host "Resultado: $resultado"

<?php
echo "Digite a operação (ex: 5 + 3): ";
$linha = trim(fgets(STDIN));
$partes = explode(" ", $linha);

if (count($partes) != 3) {
    echo "Entrada inválida!\n";
    exit();
}

$a = (float)$partes[0];
$op = $partes[1];
$b = (float)$partes[2];

switch ($op) {
    case "+":
        echo "Resultado: " . ($a + $b) . "\n";
        break;
    case "-":
        echo "Resultado: " . ($a - $b) . "\n";
        break;
    case "*":
        echo "Resultado: " . ($a * $b) . "\n";
        break;
    case "/":
        echo "Resultado: " . ($a / $b) . "\n";
        break;
    default:
        echo "Operador inválido!\n";
}

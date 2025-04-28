use strict;
use warnings;

print "Digite o primeiro número: ";
my $a = <STDIN>;
chomp($a);

print "Digite o operador (+ - * /): ";
my $op = <STDIN>;
chomp($op);

print "Digite o segundo número: ";
my $b = <STDIN>;
chomp($b);

my $resultado;

if ($op eq "+") {
    $resultado = $a + $b;
} elsif ($op eq "-") {
    $resultado = $a - $b;
} elsif ($op eq "*") {
    $resultado = $a * $b;
} elsif ($op eq "/") {
    if ($b != 0) {
        $resultado = $a / $b;
    } else {
        print "Erro: divisão por zero!\n";
        exit(1);
    }
} else {
    print "Operador inválido!\n";
    exit(1);
}

print "Resultado: $resultado\n";

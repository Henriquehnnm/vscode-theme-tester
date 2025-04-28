puts "Digite o primeiro número: "
gets stdin a
puts "Digite o operador (+ - * /): "
gets stdin op
puts "Digite o segundo número: "
gets stdin b

set resultado 0

if {$op == "+"} {
    set resultado [expr $a + $b]
} elseif {$op == "-"} {
    set resultado [expr $a - $b]
} elseif {$op == "*"} {
    set resultado [expr $a * $b]
} elseif {$op == "/"} {
    if {$b == 0} {
        puts "Erro: divisão por zero!"
        exit
    }
    set resultado [expr $a / $b]
} else {
    puts "Operador inválido!"
    exit
}

puts "Resultado: $resultado"

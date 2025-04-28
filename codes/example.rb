print "Digite o primeiro número: "
a = gets.to_f
print "Digite o operador (+ - * /): "
op = gets.chomp
print "Digite o segundo número: "
b = gets.to_f

resultado = case op
    when "+" then a + b
    when "-" then a - b
    when "*" then a * b
    when "/" then a / b
    else "Operador inválido!"
end

puts "Resultado: #{resultado}"

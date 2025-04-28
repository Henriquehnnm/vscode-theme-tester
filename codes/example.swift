import Foundation

print("Digite o primeiro número: ", terminator: "")
let a = Double(readLine()!)!

print("Digite o operador (+ - * /): ", terminator: "")
let op = readLine()!

print("Digite o segundo número: ", terminator: "")
let b = Double(readLine()!)!

var resultado: Double = 0.0

switch op {
case "+":
    resultado = a + b
case "-":
    resultado = a - b
case "*":
    resultado = a * b
case "/":
    if b != 0 {
        resultado = a / b
    } else {
        print("Erro: divisão por zero!")
        exit(1)
    }
default:
    print("Operador inválido!")
    exit(1)
}

print("Resultado: \(resultado)")

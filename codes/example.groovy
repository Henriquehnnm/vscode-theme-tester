println "Digite o primeiro número: "
def a = System.in.newReader().readLine().toDouble()

println "Digite o operador (+ - * /): "
def operador = System.in.newReader().readLine()

println "Digite o segundo número: "
def b = System.in.newReader().readLine().toDouble()

def resultado
switch(operador) {
    case "+":
        resultado = a + b
        break
    case "-":
        resultado = a - b
        break
    case "*":
        resultado = a * b
        break
    case "/":
        if (b != 0) {
            resultado = a / b
        } else {
            println "Erro: divisão por zero!"
            return
        }
        break
    default:
        println "Operador inválido!"
        return
}

println "Resultado: $resultado"

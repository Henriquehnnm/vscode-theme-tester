fun main() {
    print("Digite o primeiro número: ")
    val a = readLine()!!.toDouble()
    print("Digite o operador (+ - * /): ")
    val op = readLine()!!
    print("Digite o segundo número: ")
    val b = readLine()!!.toDouble()

    val resultado = when (op) {
        "+" -> a + b
        "-" -> a - b
        "*" -> a * b
        "/" -> a / b
        else -> {
            println("Operador inválido!")
            return
        }
    }

    println("Resultado: $resultado")
}

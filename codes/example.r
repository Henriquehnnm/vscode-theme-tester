# Calculadora simples em R

# Função de calculadora
calcular <- function(a, operador, b) {
  if (operador == "+") {
    return(a + b)
  } else if (operador == "-") {
    return(a - b)
  } else if (operador == "*") {
    return(a * b)
  } else if (operador == "/") {
    if (b != 0) {
      return(a / b)
    } else {
      print("Erro: divisão por zero!")
      return(NULL)
    }
  } else {
    print("Operador inválido!")
    return(NULL)
  }
}

# Entrada do usuário
a <- as.numeric(readline(prompt="Digite o primeiro número: "))
operador <- readline(prompt="Digite o operador (+ - * /): ")
b <- as.numeric(readline(prompt="Digite o segundo número: "))

# Chama a função de cálculo
resultado <- calcular(a, operador, b)

# Exibe o resultado
if (!is.null(resultado)) {
  print(paste("Resultado:", resultado))
}

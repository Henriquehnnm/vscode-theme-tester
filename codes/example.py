def calcular(a, b, operador):
    if operador == '+':
        return a + b
    elif operador == '-':
        return a - b
    elif operador == '*':
        return a * b
    elif operador == '/':
        return a / b
    else:
        return "Operador inválido!"

a = float(input("Digite o primeiro número: "))
operador = input("Digite o operador (+ - * /): ")
b = float(input("Digite o segundo número: "))

print("Resultado:", calcular(a, b, operador))

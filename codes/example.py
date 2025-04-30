# codes/example.py

def calcular(a, b, operador):
    try:
        if operador == '+':
            return a + b
        elif operador == '-':
            return a - b
        elif operador == '*':
            return a * b
        elif operador == '/':
            if b != 0:
                return a / b
            else:
                raise ValueError("Divisão por zero!")
        else:
            raise ValueError("Operador inválido!")
    except ValueError as e:
        print(f"Erro: {e}")
        return None

def main():
    print("Calculadora CLI Básica")
    print("------------------------")

    while True:
        a = float(input("Digite o primeiro número: "))
        operador = input("Digite o operador (+ - * /): ")
        b = float(input("Digite o segundo número: "))

        resultado = calcular(a, b, operador)

        if resultado is not None:
            print(f"Resultado: {resultado}")
        else:
            print("Erro ao calcular!")

if __name__ == "__main__":
    main()
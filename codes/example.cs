using System;

class Calculadora {
    static void Main() {
        double a, b;
        string op;

        Console.Write("Digite o primeiro número: ");
        a = Convert.ToDouble(Console.ReadLine());
        Console.Write("Digite o operador (+ - * /): ");
        op = Console.ReadLine();
        Console.Write("Digite o segundo número: ");
        b = Convert.ToDouble(Console.ReadLine());

        double resultado;

        switch (op) {
            case "+":
                resultado = a + b;
                break;
            case "-":
                resultado = a - b;
                break;
            case "*":
                resultado = a * b;
                break;
            case "/":
                if (b == 0) {
                    Console.WriteLine("Erro: divisão por zero!");
                    return;
                }
                resultado = a / b;
                break;
            default:
                Console.WriteLine("Operador inválido!");
                return;
        }

        Console.WriteLine("Resultado: " + resultado);
    }
}

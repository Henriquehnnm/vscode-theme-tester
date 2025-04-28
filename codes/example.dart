import 'dart:io';

void main() {
  stdout.write("Digite o primeiro número: ");
  double a = double.parse(stdin.readLineSync()!);

  stdout.write("Digite o operador (+ - * /): ");
  String op = stdin.readLineSync()!;

  stdout.write("Digite o segundo número: ");
  double b = double.parse(stdin.readLineSync()!);

  double resultado = 0;

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
      if (b != 0) {
        resultado = a / b;
      } else {
        print("Erro: divisão por zero!");
        return;
      }
      break;
    default:
      print("Operador inválido!");
      return;
  }

  print("Resultado: $resultado");
}

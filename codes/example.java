import java.util.Scanner;

public class Calculadora {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Digite o primeiro número: ");
        double a = sc.nextDouble();
        System.out.print("Digite o operador (+ - * /): ");
        String op = sc.next();
        System.out.print("Digite o segundo número: ");
        double b = sc.nextDouble();

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
                resultado = a / b;
                break;
            default:
                System.out.println("Operador inválido!");
                return;
        }

        System.out.println("Resultado: " + resultado);
    }
}

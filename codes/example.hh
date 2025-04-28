class Main {
    static function main() {
        var a = Std.parseFloat(Sys.stdin().readLine());
        var op = Sys.stdin().readLine();
        var b = Std.parseFloat(Sys.stdin().readLine());

        var resultado:Float;

        switch (op) {
            case "+":
                resultado = a + b;
            case "-":
                resultado = a - b;
            case "*":
                resultado = a * b;
            case "/":
                if (b != 0) {
                    resultado = a / b;
                } else {
                    Sys.println("Erro: divisão por zero!");
                    return;
                }
            default:
                Sys.println("Operador inválido!");
                return;
        }

        Sys.println("Resultado: " + resultado);
    }
}

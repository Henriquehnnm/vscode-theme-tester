function calcular(a: number, b: number, op: string): number {
    switch (op) {
        case "+":
            return a + b;
        case "-":
            return a - b;
        case "*":
            return a * b;
        case "/":
            if (b === 0) {
                throw new Error("Erro: divisão por zero!");
            }
            return a / b;
        default:
            throw new Error("Operador inválido!");
    }
}

const a = 10;
const b = 5;
const op = "+";

try {
    console.log(`Resultado: ${calcular(a, b, op)}`);
} catch (error) {
    console.error(error.message);
}

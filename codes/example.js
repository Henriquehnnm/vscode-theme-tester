const readline = require("readline").createInterface({
    input: process.stdin,
    output: process.stdout
});

readline.question("Digite o primeiro número: ", (a) => {
    readline.question("Digite o operador (+ - * /): ", (op) => {
        readline.question("Digite o segundo número: ", (b) => {
            a = parseFloat(a);
            b = parseFloat(b);
            let resultado;

            switch(op) {
                case '+': resultado = a + b; break;
                case '-': resultado = a - b; break;
                case '*': resultado = a * b; break;
                case '/': resultado = a / b; break;
                default: resultado = "Operador inválido!";
            }

            console.log("Resultado:", resultado);
            readline.close();
        });
    });
});

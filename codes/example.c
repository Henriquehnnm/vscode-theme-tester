#include <stdio.h>

int main() {
    double a, b;
    char op;

    printf("Digite o primeiro número: ");
    scanf("%lf", &a);
    printf("Digite o operador (+ - * /): ");
    scanf(" %c", &op);
    printf("Digite o segundo número: ");
    scanf("%lf", &b);

    switch(op) {
        case '+': printf("Resultado: %.2f\n", a + b); break;
        case '-': printf("Resultado: %.2f\n", a - b); break;
        case '*': printf("Resultado: %.2f\n", a * b); break;
        case '/': printf("Resultado: %.2f\n", a / b); break;
        default: printf("Operador inválido!\n");
    }

    return 0;
}

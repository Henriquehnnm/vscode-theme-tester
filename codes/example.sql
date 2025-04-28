CREATE TABLE calculadora (
    id INT PRIMARY KEY,
    numero1 FLOAT,
    operador VARCHAR(1),
    numero2 FLOAT,
    resultado FLOAT
);

-- Inserir um exemplo de operação
INSERT INTO calculadora (id, numero1, operador, numero2)
VALUES (1, 10, '+', 5);

-- Consultar a operação
SELECT numero1, operador, numero2, 
    CASE 
        WHEN operador = '+' THEN numero1 + numero2
        WHEN operador = '-' THEN numero1 - numero2
        WHEN operador = '*' THEN numero1 * numero2
        WHEN operador = '/' AND numero2 != 0 THEN numero1 / numero2
        ELSE 'Erro: Operação inválida ou divisão por zero'
    END AS resultado
FROM calculadora;

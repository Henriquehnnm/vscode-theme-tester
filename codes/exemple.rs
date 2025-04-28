use std::io;

fn main() {
    let mut entrada = String::new();

    println!("Digite o primeiro número:");
    io::stdin().read_line(&mut entrada).unwrap();
    let a: f64 = entrada.trim().parse().unwrap();

    entrada.clear();
    println!("Digite o operador (+ - * /):");
    io::stdin().read_line(&mut entrada).unwrap();
    let op = entrada.trim();

    entrada.clear();
    println!("Digite o segundo número:");
    io::stdin().read_line(&mut entrada).unwrap();
    let b: f64 = entrada.trim().parse().unwrap();

    let resultado = match op {
        "+" => a + b,
        "-" => a - b,
        "*" => a * b,
        "/" => a / b,
        _ => {
            println!("Operador inválido!");
            return;
        }
    };

    println!("Resultado: {}", resultado);
}

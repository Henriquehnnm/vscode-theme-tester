open System

let calcular () =
    printfn "Digite o primeiro número: "
    let a = Convert.ToDouble(Console.ReadLine())

    printfn "Digite o operador (+ - * /): "
    let op = Console.ReadLine()

    printfn "Digite o segundo número: "
    let b = Convert.ToDouble(Console.ReadLine())

    let resultado =
        match op with
        | "+" -> a + b
        | "-" -> a - b
        | "*" -> a * b
        | "/" when b <> 0.0 -> a / b
        | "/" -> failwith "Erro: divisão por zero!"
        | _ -> failwith "Operador inválido!"

    printfn "Resultado: %f" resultado

calcular()

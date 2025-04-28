package main

import (
    "fmt"
)

func main() {
    var a, b float64
    var op string

    fmt.Print("Digite o primeiro número: ")
    fmt.Scan(&a)
    fmt.Print("Digite o operador (+ - * /): ")
    fmt.Scan(&op)
    fmt.Print("Digite o segundo número: ")
    fmt.Scan(&b)

    switch op {
    case "+":
        fmt.Println("Resultado:", a + b)
    case "-":
        fmt.Println("Resultado:", a - b)
    case "*":
        fmt.Println("Resultado:", a * b)
    case "/":
        fmt.Println("Resultado:", a / b)
    default:
        fmt.Println("Operador inválido!")
    }
}

defmodule Calculadora do
  def calcular do
    IO.puts "Digite o primeiro número:"
    a = IO.gets("") |> String.trim() |> String.to_float()

    IO.puts "Digite o operador (+ - * /):"
    op = IO.gets("") |> String.trim()

    IO.puts "Digite o segundo número:"
    b = IO.gets("") |> String.trim() |> String.to_float()

    resultado = 
      case op do
        "+" -> a + b
        "-" -> a - b
        "*" -> a * b
        "/" -> if b != 0, do: a / b, else: "Erro: divisão por zero!"
        _ -> "Operador inválido!"
      end

    IO.puts "Resultado: #{resultado}"
  end
end

Calculadora.calcular()

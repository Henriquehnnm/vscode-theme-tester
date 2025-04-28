io.write("Digite a operação (ex: 5 + 3): ")
local entrada = io.read()
local a, op, b = entrada:match("(%S+)%s*(%S)%s*(%S+)")

a = tonumber(a)
b = tonumber(b)

local resultado
if op == "+" then
    resultado = a + b
elseif op == "-" then
    resultado = a - b
elseif op == "*" then
    resultado = a * b
elseif op == "/" then
    resultado = a / b
else
    print("Operador inválido!")
    return
end

print("Resultado: " .. resultado)

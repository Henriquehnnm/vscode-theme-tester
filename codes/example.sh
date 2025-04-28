read -p "Digite o primeiro número: " a
read -p "Digite o operador (+ - * /): " op
read -p "Digite o segundo número: " b

case $op in
'+') echo "Resultado: $(echo "$a + $b" | bc -l)" ;;
'-') echo "Resultado: $(echo "$a - $b" | bc -l)" ;;
'*') echo "Resultado: $(echo "$a * $b" | bc -l)" ;;
'/') echo "Resultado: $(echo "$a / $b" | bc -l)" ;;
*) echo "Operador inválido!" ;;
esac

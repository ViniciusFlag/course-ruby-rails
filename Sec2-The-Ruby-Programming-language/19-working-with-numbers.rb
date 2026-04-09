puts 1+2

puts 10/4 # o Ruby não interpreta o resultado desta formula como um float, ele retorna um int, é preciso fazer a conversao
puts 10.0 / 4
puts 10 / 4.0
puts 10.to_f / 4
puts 10 / 4.to_f
 
puts "Conteudo antes"
puts "-" * 20 # neste formato é concatenado a string, como se fosse "-" + "-" ...
puts "Conteudo depois"
20.times {print "-"}
puts

# Calculadora simples
puts "Uma simples calculadora"
25.times {print "-"}
puts
puts "Entre com o primeiro numero:"
num_1 = gets.chop
puts "Entre com o segundo numero:"
num_2 = gets.chop
puts "O resultado da multiplicacao é: #{num_1.to_i * num_2.to_i}"
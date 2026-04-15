# Como pegar entradas do usuario

puts "Qual o seu nome?"
first_name = gets.chop

puts "Ola #{first_name.reverse}"

# Entrada com numero
puts "Digite um numero que sera multiplicado por 2"
input = gets.chop
puts input.to_i * 2 # É necessario fazer a conversão, pois a entrada vem como string, caso o usuario coloque um numero, como é o caso, ira concatenar a resposta
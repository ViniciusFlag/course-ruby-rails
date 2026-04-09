a = [1,2,3,4,5,6,7,8,9]
p a.last # printa o ultimo elemento do array

x = 1..100
p x.to_a
20.times {print "-"}
puts
p x.to_a.shuffle # Embaralha

z = (1..10).to_a
p z
p z.reverse # reverte o array
p z # retorna a forma original
p z.reverse! # desta forma, a variavel e mudado permanentemente
p z

a = "a".."z"
p a.to_a
p a.to_a.length

a = [1,2,3,4,5,6,7,8,9]
a << 10 # adiciona um elemento
p a.last
p a.first
p a.unshift("Vinicius") # adiciona um elemento no comeco do array
p a.append("Vinicius") # adiciona um elemento no final do array
p a.uniq! # remove elementos duplicados
p a.empty? # retorna se o array esta vazio
p a.include?("Vinicius") # retorna se o array tem o seguinte elemento
p a.push("Novo Item") # inclui um novo item ao array
p a.pop # remove um item ao array

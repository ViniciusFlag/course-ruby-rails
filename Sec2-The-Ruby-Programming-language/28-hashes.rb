sample_hash = {'a' => 1, 'b' => 2, 'c' => 3}

my_details = {'name' => 'Vinicius', 'favcolor' => 'purple'}
another_hash = {a: 1, b: 2, c: 3} # neste formato retorna as chaves como simbolos

p my_details
my_details.each do |key, value|
    puts "A classe de Key é #{key.class} e a classe de Value é #{value.class}"
end

my_details = {name: 'Vinicius', favcolor: 'purple'}
p my_details
my_details.each do |key, value|
    puts "A classe de Key é #{key.class} e a classe de Value é #{value.class}"
end

my_hash = {a: 1, b: 2, c: 3}
p my_hash
my_hash[:e] = "Vinicius"
p my_hash
my_hash[:c] = "Ruby"
p my_hash

my_hash.select { |k, v|
    v.is_a?(String) # vai retornar apenas os valores que são String
}
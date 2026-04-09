dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
    somehash.keys
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
    somehash[key]
end
 
# Execution flow
loop do
    puts "Voce quer saber qual é o codigo de postagem da cidade? (Y/N)"
    answer = gets.chomp.downcase
    break if answer != 'y'
    
    puts "Qual é a cidade que voce quer ver o codigo?"
    puts get_city_names(dial_book)
    puts "Selecine uma cidade:"
    prompt = gets.chomp

    if dial_book.include?(prompt)
        puts "O codigo da cidade #{prompt} é #{get_area_code(dial_book, prompt)}"
    else
        puts "Cidade não encontrada!"
    end
end
users = [
    {username: "Vinicius", password: "senha1"},
    {username: "Alice", password: "senha2"},
    {username: "Iron", password: "senha3"},
    {username: "Jade", password: "senha4"}
]

def auth_user(username, password, list_user)
    list_user.each do |user| 
        if user[:username] == username && user[:password] == password
            return user
        end
    end
    return "Credenciais Incorreta"
end

puts "Bem vindo ao Autenticador Ruby!"
25.times {print "-"}
puts
puts "Este programa faz a comparacao do usuario e senha" 
puts "Se as informacoes estiverem corretas, o objeto do usuario informado sera retornado"
25.times {print "-"}
puts

attempts = 1
while attempts < 4
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp

    authentication = auth_user(username, password, users)
    puts authentication
    
    puts "Aperte \'n\'para sair do programa, ou qualquer outra tecla para continuar:"
    input = gets.chomp.downcase

    break if input == "n"
    attempts += 1
end

puts "Voce atingiu o numero de tentativas" if attempts == 4
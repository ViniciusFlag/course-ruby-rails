# Module podem ser usados em todo o código, mas não podem ser instanciados ou herdados como classe, funcionam como containers para metodos,
# organizam o codigo e evitam conflitos de namespaces. Os modules fornecem funcionalidades compartilhadas as classes atraves do "mixing"

module Crud
    require 'bcrypt'
    puts "Esta no module"

    def create_hash_digest(password)
        BCrypt::Password.create(password)
    end

    def verify_hash_digest(password)
        BCrypt::Password.new(password)
    end

    def create_secure_users(list_users)
        list_users.each do |user|
            user[:password] = create_hash_digest(user[:password])
        end

        list_users
    end

    def authenticate_user(username, password, list_users)
        list_users.each do |user|
            if user[:username] == username && verify_hash_digest(user[:password]) == password
                return user
            end
        end
        "Credenciais invalidas"
    end
end
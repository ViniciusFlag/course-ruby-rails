require 'bundler/inline'

gemfile true do
    source 'http://rubygems.org'
    gem 'bcrypt'
end

require 'bcrypt'

users = [
    {username: "Vinicius", password: "senha1"},
    {username: "Alice", password: "senha2"},
    {username: "Iron", password: "senha3"},
    {username: "Jade", password: "senha4"}
]

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
new_users = create_secure_users(users)
puts new_users
p authenticate_user("Alice", "senhaa2", new_users)
# new_password = create_hash_digest("senha1")

# puts new_password == "senha1"
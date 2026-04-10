require_relative 'crud'

users = [
    {username: "Vinicius", password: "senha1"},
    {username: "Alice", password: "senha2"},
    {username: "Iron", password: "senha3"},
    {username: "Jade", password: "senha4"}
]

hashed_users = Crud.create_secure_users(users)

puts hashed_users
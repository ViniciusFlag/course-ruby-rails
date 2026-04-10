require_relative 'crud'

class Student
    include Crud
    attr_accessor :first_name, :last_name, :email, :username, :password # o attr_accessos é um short construtor que cria os metodos de getter e setter
    # Ao criar uma classe em ruby, os atributos devem comecar com um simbolo(@)
    
    # @first_name
    # @last_name
    # @email
    # @username
    # @password

    # def first_name=(name) # metodo setter, seta um atributo
    #     @first_name = name
    # end

    # def first_name # metodo getter, pega um atributo
    #     @first_name
    # end

    def initialize(firstname, lastname, username, email, password)
        @first_name = firstname
        @last_name = lastname
        @username = username
        @email = email
        @password = password
    end

    def to_s
        "First name: #{@first_name}, Last name: #{@last_name}, Email: #{@email}"
    end
end

# vinicius = Student.new
# puts vinicius

# vinicius.first_name = "Vinicius"
# vinicius.last_name = "Bandeira"
# vinicius.email = "vinicius.bandeira@mail.com"
# puts vinicius.first_name
# puts vinicius.last_name
# puts vinicius.email
# puts vinicius

alice = Student.new("Alice", "Bandeira", "alice1", "alice.bandeira@mail.com", "senha1")
puts alice

hashed_password = alice.create_hash_digest(alice.password)

puts hashed_password
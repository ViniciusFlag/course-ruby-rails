class Article < ApplicationRecord
    validates :title, presence: true, length: {minimum: 6, maximum: 100} # length define o tamanho minimo e maximo de caracteres
    validates :description, presence: true, length: {minimum: 10, maximum: 300} # length define o tamanho minimo e maximo de caracteres
end

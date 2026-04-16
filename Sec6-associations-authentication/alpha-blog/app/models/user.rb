class User < ApplicationRecord
    has_many :articles # indica que um usuario pode ter muitos articles
    before_save { self.email = email.downcase } # antes de salvar, deixa o campo de email em minusculo

    validates :username, presence: true, 
                        uniqueness: { case_sensitive: false }, 
                        length: {minimum: 3, maximum: 35} # uniqueness não permite que seja incluido com o mesmo valor, o case_sensitive é para não incluir o mesmo valor com diferença de maiuscula ou minuscula
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email,   presence: true,
                        uniqueness: { case_sensitive: false },
                        length: {maximum: 105},
                        format: { with: VALID_EMAIL_REGEX } # adiciona uma formatação de email

    has_secure_password
end

class User < ApplicationRecord
    has_many :articles # indica que um usuario pode ter muitos articles
end

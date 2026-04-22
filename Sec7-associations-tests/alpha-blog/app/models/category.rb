class Category < ApplicationRecord
    validates :name, presence: true, length: {minimun: 3, maximun: 25}
    validates_uniqueness_of :name
end

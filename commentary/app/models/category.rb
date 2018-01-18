class Category < ApplicationRecord
    has_many :posts
    validates :title, presence: true, length: { minimum: 3, maximum: 50 }
end

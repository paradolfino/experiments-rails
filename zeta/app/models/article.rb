class Article < ApplicationRecord
    validates :title, presence: true, length: { minimum: 3, maximum: 50 }
    validates :body, presence: true, length: { length: 10, maximum: 300 }
end
class Topic < ApplicationRecord
    has_many :blogs
    validates :title, presence: true, length: { minimum: 3, maximum: 50 }
end

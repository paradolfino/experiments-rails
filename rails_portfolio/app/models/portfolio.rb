class Portfolio < ApplicationRecord
    validates :title, presence: true, length: { minimum: 3, maximum: 50 }
    validates :body, presence: true, length: { minimum: 3, maximum: 500 }
    extend FriendlyId
    friendly_id :title, use: :slugged
end

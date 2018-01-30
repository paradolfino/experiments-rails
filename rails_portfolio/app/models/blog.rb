class Blog < ApplicationRecord
    belongs_to :topic
    enum status: { draft: 0, published: 1 }
    validates :title, presence: true, length: { minimum: 3, maximum: 50 }
    validates :body, presence: true, length: { minimum: 3, maximum: 500 }
    extend FriendlyId
    friendly_id :title, use: :slugged
end

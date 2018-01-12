class Article < ApplicationRecord
  belongs_to :users
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :description, presence: true, length: { length: 10, maximum: 300 }

end
class Skill < ApplicationRecord
    validates :title, presence: true, length: { minimum: 3, maximum: 50 }
    validates :percent_used, presence: true, length: { minimum: 3, maximum: 500 }
end

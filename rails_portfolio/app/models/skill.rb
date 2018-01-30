class Skill < ApplicationRecord
    validates :title, presence: true, length: { minimum: 3, maximum: 50 }
    validates :percent_utilized, presence: true
end

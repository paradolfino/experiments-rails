class Sentence < ApplicationRecord
    belongs_to :word

    validates :entry,
    presence: true,
    uniqueness: { case_sensitive: false }, 
    length: { minimum: 3, maximum: 25 }
end

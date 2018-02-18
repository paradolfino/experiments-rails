class Phrase < ApplicationRecord
    belongs_to :word

    validates :english,
    presence: true,
    length: { minimum: 3, maximum: 150 }
end

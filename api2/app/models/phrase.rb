class Phrase < ApplicationRecord
    belongs_to :word

    validates :entry,
    presence: true,
    length: { minimum: 3, maximum: 150 }
end

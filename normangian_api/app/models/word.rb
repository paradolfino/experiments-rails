class Word < ApplicationRecord
    has_many :sentences, dependent: :destroy

    validates :english, presence: true
    validates :single, presence: true
end

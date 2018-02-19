class List < ApplicationRecord
    has_many :cards, ->{ order(position: :asc)}
end

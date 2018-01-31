class Skill < ApplicationRecord
    validates :title, presence: true, length: { minimum: 3, maximum: 50 }
    validates :percent_utilized, presence: true

    after_initialize :set_defaults

    def set_defaults
        self.badge ||= "http://placehold.it/250x250"
    end
end

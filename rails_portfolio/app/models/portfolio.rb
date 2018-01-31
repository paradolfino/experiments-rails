class Portfolio < ApplicationRecord
    validates :title, presence: true, length: { minimum: 3, maximum: 50 }
    validates :body, presence: true, length: { minimum: 3, maximum: 500 }
    validates_presence_of :main_image, :thumb_image
    enum status: { draft: 0, published: 1 }
    extend FriendlyId
    friendly_id :title, use: :slugged

    def self.subwoofer
        where(subtitle: "Subwoofer")
    end

    scope :subwoofer, -> { where(subtitle: "Subwoofer") } #lambda scope

    after_initialize :set_defaults

    def :set_defaults

    end

end

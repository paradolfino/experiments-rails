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

    def set_defaults
        self.main_image ||= "http://via.placeholder.com/600x400"
        self.thumb_image ||= "http://via.placeholder.com/350x200"
    end
    def set_defaults
        self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
        self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
    end

end

class Category < ActiveRecord::Base
    validates :name, presence: true, length: {min: 3, max: 25}
end
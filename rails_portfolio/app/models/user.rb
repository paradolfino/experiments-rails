class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         def first_initial
          self.first_name.split("").first
         end

         def last_initial
          self.last_name.split("").first
         end
end

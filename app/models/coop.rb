class Coop < ApplicationRecord
  has_many :available_chickens, dependent: :destroy
end

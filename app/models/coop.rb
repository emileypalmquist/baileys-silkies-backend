class Coop < ApplicationRecord
  has_one_attached :photo
  has_many :available_chickens, dependent: :destroy
  validates :name, :description, presence: true

  def available_count
    available_chickens.count
  end
end

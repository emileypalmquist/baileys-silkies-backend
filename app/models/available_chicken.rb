class AvailableChicken < ApplicationRecord
  has_one_attached :photo
  belongs_to :coop

  validates :sex, :hatch_date, :feather_type, :naked_neck, :color, :photo, :available, :coop_id, presence: true
  validates :sex, inclusion: {in: %w(male female n/a), message: 'must be male, female, or n/a'}

  def self.colors
    distinct.pluck(:color)
  end

  def self.feather_types
    distinct.pluck(:feather_type)
  end

end

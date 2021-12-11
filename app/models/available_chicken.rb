class AvailableChicken < ApplicationRecord
  belongs_to :coop

  validates :sex, inclusion: {in: %w(male female n/a), message: 'must be male, female, or n/a'}

  def self.colors
    distinct.pluck(:color)
  end

  def self.feather_types
    distinct.pluck(:feather_type)
  end
end

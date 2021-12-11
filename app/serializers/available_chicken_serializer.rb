class AvailableChickenSerializer < ActiveModel::Serializer
  attributes :id, :sex, :hatch_date, :feather_type, :naked_neck, :color
  # has_one :coop
end

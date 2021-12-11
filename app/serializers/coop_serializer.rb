class CoopSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :available_chickens
end

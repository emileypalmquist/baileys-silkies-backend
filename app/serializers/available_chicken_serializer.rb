class AvailableChickenSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  
  attributes :id, :sex, :hatch_date, :feather_type, :naked_neck, :color, :photo, :available, :coop_id
  # has_one :coop
  def photo
    if object.photo.attached?
      "http://localhost:3000" + rails_blob_path(object.photo, only_path: true)
    else
      "https://www.mypetchicken.com/images/product_images/Popup/White-Silkie-2190-L.jpg"
    end
  end
end

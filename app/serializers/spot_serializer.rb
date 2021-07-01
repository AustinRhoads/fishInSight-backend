class SpotSerializer < ActiveModel::Serializer
  attributes :id, :lat, :lng, :address, :name, :water_body_class, :state, :city, :street_address, :zip_code

  has_many :catches
end

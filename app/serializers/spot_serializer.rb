class SpotSerializer < ActiveModel::Serializer
  attributes :id, :latitude, :longitude, :location, :name, :water_body_class

  has_many :catches
end

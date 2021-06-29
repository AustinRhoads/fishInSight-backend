class SpeciesSerializer < ActiveModel::Serializer
  attributes :id, :scientific_name, :description, :name

  has_many :catches
end

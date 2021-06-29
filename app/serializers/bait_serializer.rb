class BaitSerializer < ActiveModel::Serializer
  attributes :id, :name, :efficacy_rating, :notes

  has_many :users
end

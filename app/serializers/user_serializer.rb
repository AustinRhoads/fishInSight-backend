class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password_digest
  has_many :catches
  has_many :species, through: :catches
  has_many :spots
  has_many :baits
end

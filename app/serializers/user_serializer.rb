class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  default_url_options[:host] = 'localhost:3000'

  attributes :id, :username, :email, :password_digest, :image
  has_many :catches
  has_many :species, through: :catches
  has_many :spots
  has_many :baits

  def species
    object.species.uniq
  end

  def image
    if object.image.attached?
      {
        url: rails_blob_url(object.image)
      }
    end
  end
end

class CatchSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
default_url_options[:host] = 'localhost:3000'


  attributes :id, :user_id, :species_id, :spot_id, :bait_id, :size, :address, :lat, :lng, :date, :notes, :species, :bait, :image

 
  belongs_to :user 
  belongs_to :bait, optional: true  
  belongs_to :spot, optional: true 
  belongs_to :species, optional: true

  def species
    object.species
  end

  def bait
    object.bait
  end

  def spot
    object.spot
  end

  def user
    object.user
  end

  def image
    if object.image.attached?
      {
        url: rails_blob_url(object.image)
      }
    end
  end
  
end

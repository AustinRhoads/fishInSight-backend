class CatchSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :species_id, :spot_id, :bait_id, :size, :address, :lat, :lng, :date, :notes, :species, :bait

  belongs_to :user 
  belongs_to :bait 
  belongs_to :spot 
  belongs_to :species

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
  
end

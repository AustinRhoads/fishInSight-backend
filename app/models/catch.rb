class Catch < ApplicationRecord
  belongs_to :user
  belongs_to :species
  belongs_to :spot
  belongs_to :bait

  has_one_attached :image
end

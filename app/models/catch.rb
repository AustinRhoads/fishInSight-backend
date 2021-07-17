class Catch < ApplicationRecord
  belongs_to :user
  belongs_to :species, optional: true
  belongs_to :spot, optional: true
  belongs_to :bait, optional: true

  has_one_attached :image
end

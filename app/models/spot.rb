class Spot < ApplicationRecord
    has_many :catches
    has_many :species, through: :catches
    has_and_belongs_to_many :users
end

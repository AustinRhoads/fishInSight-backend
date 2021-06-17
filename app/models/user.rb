class User < ApplicationRecord
    has_secure_password
    has_many :catches
    has_many :species, through: :catches
    has_many :spots
    has_and_belongs_to_many :baits
end

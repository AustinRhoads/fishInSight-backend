class User < ApplicationRecord
    has_secure_password
    has_many :catches
    has_many :species, through: :catches
    has_and_belongs_to_many :spots
    has_and_belongs_to_many :baits

    validates_presence_of :email
    validates_uniqueness_of :email

    def add_catch(caught)
        
    end
end

class Species < ApplicationRecord
    has_many :catches


    def create_from_collection(species_list)
        species_list.each do |spec|
            Species.create(spec)
        end
    end
end

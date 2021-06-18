class Api::V1::SpeciesController < ApplicationController

    
    def index
        species = Species.all
        render json: species
       
    end

    def create
        species = Species.new(species_params)

        if species.save?
            render json: species
        else
            render json: {error: "species did not save."}
        end
    end

    def show
        species = Species.find_by(:id => params[:id])

        render json: species
    end

    def update
        species = Species.find_by(:id => params[:id])
        species.update(species_params)
        if species.save?
            render json: species
        else
            render json: {error: "species did not update"}
        end
    end

    def destroy
        species = Species.find_by(:id => params[:id])
        species.destroy
    end

    private

    def species_params
        params.require(:species).permit(:id, :name, :scientific_name, :description)
    end


end

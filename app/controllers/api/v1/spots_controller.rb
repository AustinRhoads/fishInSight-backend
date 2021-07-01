class Api::V1::SpotsController < ApplicationController

    
    def index
        spots = Spot.all
        render json: spots
       
    end

    def create
        spot = Spot.new(spot_params)

        if spot.save
            render json: spot
        else
            render json: {error: "spot did not save."}
        end
    end

    def show
        spot = Spot.find_by(:id => params[:id])

        render json: spot
    end

    def update
        spot = Spot.find_by(:id => params[:id])
        spot.update(spot_params)
        if spot.save
            render json: spot
        else
            render json: {error: "spot did not update"}
        end
    end

    def destroy
        spot = Spot.find_by(:id => params[:id])
        spot.destroy
    end

    private

    def spot_params
        params.require(:spot).permit(:id, :name, :lat, :lng, :address, :water_body_class)
    end


end

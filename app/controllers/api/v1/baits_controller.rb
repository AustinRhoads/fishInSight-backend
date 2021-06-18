class Api::V1::BaitsController < ApplicationController

    
    def index
        baits = Bait.all
        render json: baits
       
    end

    def create
        bait = Bait.new(bait_params)

        if bait.save?
            render json: bait
        else
            render json: {error: "bait did not save."}
        end
    end

    def show
        bait = Bait.find_by(:id => params[:id])

        render json: bait
    end

    def update
        bait = Bait.find_by(:id => params[:id])
        bait.update(bait_params)
        if bait.save?
            render json: bait
        else
            render json: {error: "bait did not update"}
        end
    end

    def destroy
        bait = Bait.find_by(:id => params[:id])
        bait.destroy
    end

    private

    def bait_params
        params.require(:bait).permit(:id, :name, :notes, :efficacy_rating)
    end


end

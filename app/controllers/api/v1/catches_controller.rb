class Api::V1::CatchesController < ApplicationController
    before_action do
        ActiveStorage::Current.host = request.base_url
     end
    
    def index
        caughts = Catch.all
        render json: caughts
       
    end

    def create
        
        caught = Catch.new(catch_params)
        #binding.pry
        dateArray = catch_params[:date].split(" ")
        month = Date::ABBR_MONTHNAMES.index(dateArray[1])
        timeArray = dateArray[4].split(":")
        datetime = DateTime.new(dateArray[3].to_i, month, dateArray[2].to_i, timeArray[0].to_i, timeArray[1].to_i)
        caught.date = datetime
       # binding.pry
        if caught.save
            render json: caught
        else
            render json: {error: "catch did not save."}
        end
    end

    def show
        caught = Catch.find_by(:id => params[:id])

        render json: caught
    end

    def update
        caught = Catch.find_by(:id => params[:id])
        caught.update(caught_params)
        if caught.save
            render json: caught
        else
            render json: {error: "catch did not update"}
        end
    end

    def destroy
        caught = Catch.find_by(:id => params[:id])
        caught.destroy
    end

    private

    def catch_params
        #params.require(:catch).permit(:id, :size, :location, :date, :notes, :bait_id, :user_id, :spot_id, :species_id, :image)
        params.permit(:id, :size, :location, :date, :notes, :bait_id, :user_id, :spot_id, :species_id, :image)
    end


end

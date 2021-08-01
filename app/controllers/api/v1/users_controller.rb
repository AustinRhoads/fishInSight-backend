class Api::V1::UsersController < ApplicationController

    before_action do
        ActiveStorage::Current.host = request.base_url
     end


    def index
        users = User.all

        render json: users
    end

    def create
        user = User.new(user_params)
        if user.save?
            render json: user
        else
            render json: {error: "somethin is wrong sir."}
        end
    end

    def show
        user = User.find_by(:id => params[:id])

        render json: user
    end

    def update
        user = User.find_by(:id => params[:id])
        user.update(user_params)
      #  binding.pry

        if user.save
            render json: user
        else
            render json: {error: "mmm didnt save."}
        end

    end

    def destroy
        user = User.find_by(:id => params[:id])
        user.destroy
    end

    private

    def user_params   
        params.permit(:username, :password_digest, :email, :catches, :image)
    end


end

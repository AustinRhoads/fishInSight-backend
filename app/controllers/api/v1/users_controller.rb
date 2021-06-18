class Api::V1::UsersController < ApplicationController

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

        if user.save?
            render json: user
        else
            render json: {error: "mmm didnt save sir."}
        end

    end

    def destroy
        user = User.find_by(:id => params[:id])
        user.destroy
    end

    private

    def user_params
        params.require(:user).permkit(:username, :password_digest, :email, :catches)
    end


end

class RegistrationsController < ApplicationController

  before_action do
    ActiveStorage::Current.host = request.base_url
 end

  def create
    
    user = User.create(
      :email => params[:user][:email], 
      :username => params[:user][:username],
      :password => params[:user][:password],
      :password_confirmation => params[:user][:password_confirmation]
    )

  
    

    if user.valid?
      session[:user_id] = user.id
      render json: {
        status: :created,
        user: user
      }
    else
      if user = User.find_by(:email => params[:user][:email])
        render json: {status: 500, error: "This email is already in use. Please check your information and try again."}
      else
        render json: {status: 500, error: "The registration information you enter is invalid. Please check your information and try again."}
      end
      
    end

  end
end

class SessionsController < ApplicationController


include CurrentUserConcern

#def catches_serializer
#  CatchSerializer
#end

  def create
   
    if params['type'] === 'google_oauth2'
      binding.pry
    else
      user = User.find_by(:email => params["user"]["email"]).try(:authenticate, params["user"]["password"])
      user_found = User.find_by(:email => params["user"]["email"])
      catches = Catch.all
    end
    


    

    
 
    if user
      session[:user_id] = user.id
      render json: {
        status: :created,
        logged_in: true,
        user: user,
        
       catches: catches,
    }
    elsif user_found
      render json: {status: 401, error: "The password you entered was incorrect. Please double-check and try again."}
    else 
      render json: {status: 401, error: "The login information you entered was incorrect. Please double-check and try again."}
    end
  end


  def logged_in
    if @current_user
      catches = Catch.all
      render json: {
        logged_in: true,
        user: @current_user,
        userCatches: @current_user.catches,
        catches: catches,
      }

    else
      render json: {logged_in: false}
    end
  end

  def logout
    reset_session
    render json: {status: 200, logged_out: true}
  end




end

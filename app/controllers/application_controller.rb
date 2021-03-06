class ApplicationController < ActionController::API
    #skip_before_action :verify_authenticity_token
    #include ActionController::Helpers
    #include ActionController::Cookies
    before_action :set_csrf_cookie
    include ActionController::Cookies
    include ActionController::RequestForgeryProtection
  
    protect_from_forgery with: :exception 
		
    def cookie 
        "ok"
    end
		
    private 
		
    def set_csrf_cookie
      #  binding.pry
       cookies["CSRF-TOKEN"] = {
            value: form_authenticity_token,
            domain: :all 
        }
        
    end
end

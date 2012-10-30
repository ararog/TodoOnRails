class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :authenticate

  helper_method :current_user

  def current_user
    @current_user
  end  
  
  protected
    def authenticate
	  if user = authenticate_with_http_basic { |u, p| User.authenticated?(u, p) }
  		session[:valid] = true
		@current_user = user
	  else
		request_http_basic_authentication
	  end
	          
      #if session[:valid] = "true"
		#redirect_to root_url;
      #end   
      
      #Rails.logger.info "Log it"
    end  
end

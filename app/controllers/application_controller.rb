class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller? 


  # Made a function for customizing device so that the user
  # can enter username as well at the sign-up page. 
  # Then see before_filter at the top
  protected
	def configure_permitted_parameters
	   devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :email, :password, :password_confirmation])
     devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :email, :password, :password_confirmation])
	end

end

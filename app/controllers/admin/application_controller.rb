class Admin::ApplicationController < ActionController::Base
	
	# before_filter :is_admin
	before_action :authenticate_user!
	before_action :is_admin

	protect_from_forgery with: :exception
	layout 'admin/application'

	private 
	def is_admin
		if current_user.is_admin == true
			current_user
		elsif !current_user
			flash[:notice] = "You need to be an admin to be here."
			redirect_to root_path
		else
			flash[:alert] = 'Please log in as admin'
			redirect_to root_path
		end
	end
end
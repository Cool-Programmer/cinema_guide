class Admin::UsersController < Admin::ApplicationController
	def index
		@users = Users.all.order('created_at desc')	
	end
end
class Admin::UsersController < Admin::ApplicationController

	before_action :find_user, only: [:edit, :update, :destroy]

	def index
		@users = User.all.order('created_at desc')	
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:notice] = "User created successfully"
			redirect_to admin_users_path
		else
			render 'new'
		end
	end

	def edit
		
	end

	def update
		if @user.update(user_params)
			flash[:notice] = "User details updated successfully"
			redirect_to admin_users_path
		else
			render 'edit'
		end
	end

	def destroy
		if @user.destroy
			flash[:notice] = "User deleted successfully!"
			redirect_to admin_users_path
		end
	end


	private
	def user_params
		params.require(:user).permit(:first_name, :email, :password, :password_confirmation, :is_admin)
	end

	def find_user
		@user = User.find(params[:id])
	end
end
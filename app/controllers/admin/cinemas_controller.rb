class Admin::CinemasController < Admin::ApplicationController

	before_action :find_cinema, only: [:show, :edit, :update, :destroy]

	def index
		@cinemas = Cinema.all.order('created_at desc').paginate(:page => params[:page], :per_page => 9)
	end

	def show
		
	end

	def new
		@cinema = Cinema.new
	end

	def create
		@cinema = Cinema.new(cinema_params)
		if @cinema.save
			redirect_to admin_cinemas_path
		else
			render 'new'
		end
	end

	def edit
		
	end

	def update
		if @cinema.update(cinema_params)
			redirect_to admin_cinemas_path
		else
			render 'edit'
		end
	end

	def destroy
		if @cinema.destroy
			redirect_to admin_cinemas_path
		end
	end

	private
	def cinema_params
		params.require(:cinema).permit(:name, :featured, :location, :telephone, :open_hour, :close_hour, :open_day, :close_day, :is_active)
	end

	def find_cinema
		@cinema = Cinema.find(params[:id])
	end
end

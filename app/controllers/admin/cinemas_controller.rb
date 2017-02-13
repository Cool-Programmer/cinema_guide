class Admin::CinemasController < Admin::ApplicationController
	def index
		@cinemas = Cinema.all.order('created_at desc')
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

	private
	def cinema_params
		params.require(:cinema).permit(:name, :is_active)
	end
end

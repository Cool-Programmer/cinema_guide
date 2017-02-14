class CinemasController < ApplicationController
	def index
		if params[:search]
			@cinemas = Cinema.search(params[:search]).all.order('created_at desc').paginate(:page => params[:page], :per_page => 9)
		else
			@cinemas = Cinema.all.order('created_at desc').paginate(:page => params[:page], :per_page => 9)
		end
	end

	def show
		@cinema = Cinema.find(params[:id])
	end
end

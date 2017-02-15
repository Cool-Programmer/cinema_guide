class Admin::ReviewsController < Admin::ApplicationController
  def index
	@cinema = Cinema.find(params[:cinema_id])
	@reviews = @cinema.reviews.all
  end

  def destroy
    @cinema = Cinema.find(params[:cinema_id])
    @review = @cinema.reviews.find(params[:id])
    if @review.destroy
      flash[:notice] = "The review was successfully deleted!"
      redirect_to admin_cinema_reviews_path(@cinema)
    end
  end
end
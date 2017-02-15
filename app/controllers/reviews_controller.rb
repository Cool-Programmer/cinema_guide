class ReviewsController < ApplicationController

  def create
    @cinema = Cinema.find(params[:cinema_id])
    @review = @cinema.reviews.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to cinema_path(@cinema)
    end
  end

  def destroy
    @cinema = Cinema.find(params[:id])
    @review = @cinema.reviews.find(params[:cinema_id])
    if @review.destroy
      flash[:notice] = "Your review was successfully deleted!"
      redirect_to cinema_path(@cinema)
    end
  end

  private
  def review_params
    params.require(:review).permit(:cinema_id, :first_name, :message, :user_id)
  end
end

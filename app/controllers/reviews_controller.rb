class ReviewsController < ApplicationController
  def show
  end

  def new
  end

  def create
    @cinema = Cinema.find(params[:cinema_id])
    @review = @cinema.reviews.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to cinema_path(@cinema)
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def review_params
    params.require(:review).permit(:cinema_id, :first_name, :message, :user_id)
  end
end

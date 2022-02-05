class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      respond_to do |format|
        format.html { redirect_to restaurant_path(@restaurant) }
        format.js # render create.js.erb (default Rails behaviour at the end of an action)
        format.json # render create.json view
      end
    else
      render 'restaurants/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
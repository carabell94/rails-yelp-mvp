class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id]) # we need to find the restaurant by its ID
    @review = Review.new # we then create a new review for that restaurant
  end

  def create
    @review = Review.new(review_params) #creates the new instance of Review
    @restaurant = Restaurant.find(params[:restaurand_id])
    # [above] we need restaurant_id to associate our review with the corresponding restaurant
    @review.save
    redirect_to restaurant_path(@restaurant) # redirects to the restaurant page
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end

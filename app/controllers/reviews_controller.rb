class ReviewsController < ApplicationController
  before_action :set_restaurant_review, only: [:index, :new, :create]

  def index
    @reviews = @restaurant.reviews
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)

    @review.restaurant = @restaurant

    @review.save

    redirect_to restaurant_path(@restaurant)
  end

  private

  def set_restaurant_review
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end

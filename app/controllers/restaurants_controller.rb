class RestaurantsController < ApplicationController
  before_action :set_restaurants, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restuarant = Restaurant.new(restaurant_params)
    @restuarant.save

    redirect_to restaurants_path(@restaurant)
  end

  def edit
  end

  def show
  end

  def update
    @restaurant.update(restaurant_params)

    redirect_to restaurants_path(@restaurant)
  end

  def destroy
    redirect_to root_path
  end

  private

  def set_restaurants
    @restaurant = Restaurant.find(params[:id])
  end

   def restaurant_params
    params.require(:restaurant).permit(:title, :address, :phone_number, :description)
  end
end

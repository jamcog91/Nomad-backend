class RestaurantsController < ApplicationController

    def index
        restaurants = Restaurant.all
        render json: restaurants
    end

    def show
        restaurant = Restaurant.find(params[:id])
        render json: restaurant, serializer: RestaurantSerializer 
    end

    def update
        resturant = Restaurant.find(params[:id])
        restaurant.update(restaurant_params)
        render json: restaurant
    end

    private

    def restaurant_params
        paras_permit(:name, :address, :image, :style)
    end
end

class RestaurantsController < ApplicationController
    def index
        restaurants = Restaurant.all
        render json: restaurants
    end

    def show
        restaurant = Restaurant.find(params[:id])
        render json: restaurant
    end

    def create
        restaurant = Restaurant.create(restaurant_params)
        if restaurant.valid?
        render json: restaurant
        else 
        render json: restaurant.errors.full_messages
        end
    end

    def update
        restaurant = Restaurant.find(params[:id])
        restaurant.update(restaurant_params)
        render json: restaurant
    end

    def destroy
        restaurant = Restaurant.find(params[:id])
        restaurant.destroy
        render json: restaurant
    end

    private

    def restaurant_params
        params.permit(:id, :name, :user_id, :place_id )
    end

end

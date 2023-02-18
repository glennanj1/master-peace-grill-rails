class FoodsController < ApplicationController

    skip_before_action :authorize, only: [:index]

    # rescue_from ActiveRecord::RecordNotFound, with: :not_found


    # returns all food instances
    def index
        render json: Food.all, status: :ok
    end

    # edit food instance by its id
    def update
        food = Food.find(params[:id])
        food.update!(food_params)
        render json: food, status: :accepted
    end

    def show 
        food = Food.find(params[:id])
        render json: food, status: :ok
    end

    private

    def food_params
        params.permit(:id, :name, :price, :category_id, :add_ons, :details)
    end

    def not_found
        render json: { error: 'Food not found' }, status: :not_found
    end

end

class CategoriesController < ApplicationController
    skip_before_action :authorize, only: [:index]

    def index
        render json: Category.all, status: :ok
    end

    # edit food instance by its id
    def update
        category = Category.find(params[:id])
        category.update!(category_params)
        render json: category, status: :accepted
    end

    def show 
        category = Category.find(params[:id])
        render json: category, status: :ok
    end

    private

    def category_params
        params.permit(:id, :name, :description, :add_ons, :add_ons)
    end

    def not_found
        render json: { error: 'Category not found' }, status: :not_found
    end


end

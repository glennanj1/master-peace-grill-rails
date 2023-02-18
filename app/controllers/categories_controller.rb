class CategoriesController < ApplicationController
    def index
        render json: Category.all, status: :ok
    end
end

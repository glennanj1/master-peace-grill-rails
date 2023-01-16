class FoodsController < ApplicationController

    # returns all food instances
    def index
        render json: Food.all, status: :ok
    end

end

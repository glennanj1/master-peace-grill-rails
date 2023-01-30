class FoodsController < ApplicationController

    skip_before_action :authorize, only: [:index]

    # returns all food instances
    def index
        render json: Food.all, status: :ok
    end

end

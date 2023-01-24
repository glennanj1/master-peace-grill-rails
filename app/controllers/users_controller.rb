class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :invalid_record_error
    rescue_from ActiveRecord::RecordNotFound, with: :not_found_error

    skip_before_action :authorize, only: [:create]
    
    def show
        render json: @current_user
    end

    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :created
    end

    private
    
    def user_params
        params.permit(:email, :password)
    end

    def invalid_record_error(invalid)
        render json: {errors: invalid.record.errors}, status: :unprocessable_entity
    end

    def not_found_error(invalid)
        render json: {errors: invalid}, status: :not_found
    end
end

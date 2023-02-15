class SessionsController < ApplicationController
    skip_before_action :authorize, only: [:create]
    include ::ActionController::Cookies

    def create
        user = User.find_by(email: params[:email])

        if user && user.authenticate(params[:password])
            $expire_time = Time.now + 10.minutes

            session[:user_id] = user.id
            render json: user
        else
            render json: {errors: "check email and password"}, status: :unauthorized
        end
    end

    def destroy
        session.delete :user_id
        head :no_content
    end
end

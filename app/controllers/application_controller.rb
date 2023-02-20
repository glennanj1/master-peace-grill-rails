class ApplicationController < ActionController::API
    include ActionController::Cookies

    before_action :authorize

    private

    def authorize
        @current_user ||= User.find_by(id: session[:user_id])

        if @current_user

            # @time_left = $expire_time - Time.now

            # unless @time_left > 0
            #     session.delete(:user_id)
            # end

            puts "User is logged in"
        else
            render json: {errors: "Not authorized"}, status: :unauthorized 
        end
    end

end

class ModalsController < ApplicationController
    skip_before_action :authorize, only: [:index]

    def index 
        render json: { modals: Modal.first}, status: :ok
    end

    def update
        modal = Modal.find(params[:id])
        modal.update!(modal_params)
        render json: modal, status: :accepted
    end

    private
    def modal_params
        params.permit(:id, :title, :body, :picture, :active)
    end

    def not_found
        render json: { error: 'Food not found' }, status: :not_found
    end
end

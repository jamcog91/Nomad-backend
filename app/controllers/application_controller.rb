class ApplicationController < ActionController::API

rescue_from ActiveRecord::RecordNotFound, with: :render_unprocessable_entity_response

private

def render_unprocessable_entity_response(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
end

class ApplicationController < ActionController::API
include ActionController::Cookies

rescue_from ActiveRecord::RecordNotFound, with: :render_unprocessable_entity_response
before_action :authorize

  def authorize
      @current_user = User.find_by(id: session[:user_id])
      render json: { errors: ["Not authorized"] }, status: :unauthorized unless @current_user
  end

  def current_user
      @current_user ||= User.find_by(id: session[:user_id])
  end

private

  def render_unprocessable_entity_response(exception)
    case exception
    when ActiveRecord::RecordInvalid, ActiveRecord::RecordNotUnique
      render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    when ActiveRecord::RecordNotFound
      render json: { errors: ['Record not found'] }, status: :not_found
    else
      render json: { errors: [exception.message] }, status: :unprocessable_entity
    end
  end
  # def render_unprocessable_entity_response(exception)
  #   # byebug
  #   render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
  # end
end

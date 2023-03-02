class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

include ActionController::Cookies


  private

  def current_user
    @current_user ||= User.find_by(id: session[:id])
  end

  def authorize
    render json: {errors: ["Not authorized"]}, status: :unauthorized unless current_user
  end
end

class UsersController < ApplicationController
# skip_before_action :autherize

    def index
        users = User.all
        render json: users
    end

    def show 
        users = User.find(params[:id])
        render json: users
    end

    def create
        user = User.create!(user_params)
        render json: user, status: :created
    end

    def update
        user = User.find(params[:id])
        render json: user, status: :accepted
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        head :no_content
        render json: []
    end

    private

    def user_params
        params.permit(:first_name, :last_name, :email, :password, :handle, :avatar)
    end
end

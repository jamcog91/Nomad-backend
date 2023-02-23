class UsersController < ApplicationController

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
        render json: user, status: :destory
    end

    private

    
end

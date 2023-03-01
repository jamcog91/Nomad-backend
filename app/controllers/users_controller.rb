class UsersController < ApplicationController
skip_before_action :authorize, only: :create

    def index
        users = User.all
        render json: users
    end

    def show 
        users = User.find(params[:id])
        render json: users
    end

    def me
        user = User.find_by(id: session[:user_id])
        render json: user
    end

    def create
        user = User.create!(user_params)
        if user.valid?
            session[:user_id] = user.id
            render json: user, status: :created
        else 
            render json: { error: user.errors.full_messages }, status: :unproccesable_entity
        end
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

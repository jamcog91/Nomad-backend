class FollowsController < ApplicationController

    def index
        following = follow.where(follow_id: @current_user.id)
        render json: following
    end

    def show
        follow = follow.find(params[:id])
        render json: follow
    end
end

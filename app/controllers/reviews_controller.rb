class ReviewsController < ApplicationController
    skip_before_action :authorize, only: [:index, :show, :create, :patch]

    def user
        current_user
    end

    def index
        reviews = Review.all
        render json: reviews
    end

    def show
        review = Review.find(params[:id])
        render json: review, serializer: ReviewSerializer
    end

    def create
        # restaurant = Restaurant.find(params[:restaurant_id])
        # # byebug
        # score = params[:score]
        # user = User.find(params[:user_id])
        new_review = Review.create!(review_params)
        # if user.reviews.where(user_id: user.id).count >= 1
        #     review = Review.where(user_id: user.id).limit(1).first
                
        #     restaurants = [review, new_review]

        #     ReviewComparisonPrompt.new(restaurants: restaurants).render
        #     # restaurants = [
        #     #     [Review.find_by(restaurant_id: review.restaurant_id)],
        #     #     [restaurant_id, Review.find_by(restaurant_id: restaurant_Id)]
        #     # ]
        #     # if new_review.present?
        #     #     increment_counter(:score, restaurant_id)
        #     # end
        # end
        render json: new_review, status: :created
    end

    def update
        review = Review.find(params[:id])
        review.update(review_params)
        render json: review, status: :accepted
    end

    def destroy
        review = Review.find(params[:id])
        review.destory
        head :no_content
        render json: []
    end

    private

    def review_params
        params.permit(:score, :comments, :likes, :restaurant_id, :user_id)
    end
    
end

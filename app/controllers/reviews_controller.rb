class ReviewsController < ApplicationController
skip_before_action :authorize, only: [:index, :show]

    def index
        reviews = Review.all
        render json: reviews
    end

    def show
        review = Review.find(params[:id])
        render json: review, serializer: ReviewSerializer
    end

    def create
        review = Review.create!(review_params)
        render json: review, status: :created
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
        params.permit(:score, :comments)
    end
end

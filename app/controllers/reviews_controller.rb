class ReviewsController < ApplicationController
    def index 
        reviews = Review.all
        render json: reviews.as_json(except: [:created_at, :updated_at])
    end

    def show
        review = Review.find(params[:id])
        render json: review
    end

    def create 
        review = Review.create(content: params[:content], user_id: params[:user_id], coach_id: params[:coach_id])
        # byebug
        render json: review
    end


end

class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @reviews = Review.all
    respond_with(@reviews)
  end

  def show
    respond_with(@review)
  end

  def new
    @review = Review.new
    respond_with(@review)
  end

  def edit
  end

  def create
    params[:rating] = params[:score]
    @review = Review.new(review_params.merge({rating: params[:score]}))
    @review.save

    Coach.find(review_params[:coach_id]).new_review(@review.updated_at)
    respond_with(@review)
  end

  def update
    @review.update(review_params.merge({rating: params[:score]}))
    respond_with(@review)
  end

  def destroy
    @review.destroy
    respond_with(@review)
  end

  private
    def set_review
      @review = Review.find(params[:id])
    end

    def review_params
      params.require(:review).permit(:text, :coach_id, :user_id)
    end
end

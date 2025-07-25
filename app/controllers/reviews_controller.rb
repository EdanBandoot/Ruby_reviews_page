class ReviewsController < ApplicationController
  def index
    @reviews = Review.includes(:product, :satisfaction, :importance)
                     .order(created_at: :desc)
                     .page(params[:page])
  end

  def show
    @review = Review.find(params[:id])
    @product = @review.product
  end
end
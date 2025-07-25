class ReviewsController < ApplicationController
  def show
    @review = Review.find(params[:id])
    @product = @review.product
  end
end
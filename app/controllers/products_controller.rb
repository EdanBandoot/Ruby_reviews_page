class ProductsController < ApplicationController
  def index
    @products = Product.all.order(:name).page(params[:page])
  end

  def show
    @product = Product.find(params[:id])
    @reviews = @product.reviews.includes(:satisfaction, :importance).page(params[:page])
  end
end
class ProductsController < ApplicationController
  def index
    @products = Product.all.order(:name)

    if params[:search].present?
      @products = @products.where("name ILIKE ? OR description ILIKE ?",
                                "%#{params[:search]}%",
                                "%#{params[:search]}%")
    end

    if params[:category].present?
      @products = @products.where(category: params[:category])
    end

    @products = @products.page(params[:page])
  end

  def show
    @product = Product.find(params[:id])
    @reviews = @product.reviews.includes(:satisfaction, :importance).page(params[:page])
  end
end
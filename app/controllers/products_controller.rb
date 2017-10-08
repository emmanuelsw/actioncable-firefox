class ProductsController < ApplicationController

  def index
    @products = Product.all
    @product = Product.new
  end

  def create
    Product.create(product_params)
  end

  private
  def product_params
    params.require(:product).permit(:name, :body)
  end

end

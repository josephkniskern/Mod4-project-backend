class Api::ProductsController < ApplicationController

  def index 
    products = Product.all

    render json: products
  end

  def show
    product = product.find(params[:id])
    
    render json: product
  end
end

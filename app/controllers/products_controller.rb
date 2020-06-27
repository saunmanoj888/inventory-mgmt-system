class ProductsController < ApplicationController

  def edit
    @product = Product.find(params[:id])
    @stocks = @product.stocks
  end

end
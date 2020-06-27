class PublicController < ApplicationController

  def main
    @products = Product.all.includes(:stocks)
    @stocks = @products.last.stocks.order(:ware_house_id)
  end

end
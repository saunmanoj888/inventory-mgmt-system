class PublicController < ApplicationController

  def main
    @products = Product.all.includes(:stocks)
    @ware_house_ids = Product.last.stocks.pluck(:ware_house_id)
  end

end
class StocksController < ApplicationController

  def increment_item
    respond_to do |format|
      stock = Stock.find(params[:stock_id])
      stock.increment(:item_count).save
      format.json { render json: stock, status: :ok }
    end
  end

  def decrement_item
    respond_to do |format|
      stock = Stock.find(params[:stock_id])
      if stock.item_count > 0
        stock.decrement(:item_count).save
      end
      format.json { render json: stock, status: :ok }
    end
  end

  def increment_threshold
    respond_to do |format|
      stock = Stock.find(params[:stock_id])
      stock.increment(:low_item_threshold).save
      format.json { render json: stock, status: :ok }
    end
  end

  def decrement_threshold
    respond_to do |format|
      stock = Stock.find(params[:stock_id])
      if stock.low_item_threshold > 0
        stock.decrement(:low_item_threshold).save
      end
      format.json { render json: stock, status: :ok }
    end
  end

end
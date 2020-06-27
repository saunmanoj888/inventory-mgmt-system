class StocksCreationJob < ApplicationJob
  queue_as :default

  def perform(ware_house_id)
    Product.all.each do |product|
      Stock.create(
        product_id: product.id,
        ware_house_id: ware_house_id,
        item_count: 0,
        low_item_threshold: 10
      )
    end
  end
end

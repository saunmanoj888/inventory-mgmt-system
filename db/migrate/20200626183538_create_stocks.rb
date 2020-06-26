class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.belongs_to :product
      t.belongs_to :ware_house
      t.integer :item_count
      t.integer :low_item_threshold
      t.timestamps
    end
  end
end

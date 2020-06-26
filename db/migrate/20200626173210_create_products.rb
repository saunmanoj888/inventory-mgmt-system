class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :sku_code, null: false, default: ""
      t.string :name, null: false, default: ""
      t.integer :price
      t.timestamps
    end
  end
end

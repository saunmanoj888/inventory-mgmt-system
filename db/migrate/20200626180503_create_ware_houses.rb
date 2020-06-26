class CreateWareHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :ware_houses do |t|
      t.string :wh_code, null: false, default: ""
      t.string :name, null: false, default: ""
      t.string :pincode, null: false, default: ""
      t.integer :max_capacity
      t.timestamps
    end
  end
end

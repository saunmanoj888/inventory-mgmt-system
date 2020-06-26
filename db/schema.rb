# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_26_183538) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.string "sku_code", default: "", null: false
    t.string "name", default: "", null: false
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "ware_house_id"
    t.integer "item_count"
    t.integer "low_item_threshold"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_stocks_on_product_id"
    t.index ["ware_house_id"], name: "index_stocks_on_ware_house_id"
  end

  create_table "ware_houses", force: :cascade do |t|
    t.string "wh_code", default: "", null: false
    t.string "name", default: "", null: false
    t.string "pincode", default: "", null: false
    t.integer "max_capacity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

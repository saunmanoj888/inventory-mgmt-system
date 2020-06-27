# Create WareHouse data
['Mumbai', 'New Delhi', 'Bangalore'].each do |city|
  WareHouse.create(
    name: city,
    wh_code: SecureRandom.hex(8),
    pincode: rand(7 ** 7).to_s,
    max_capacity: 100000
  )
end

#Create Product data
60.times do
  Product.create(
    sku_code: SecureRandom.hex(4),
    name: Faker::Commerce.product_name,
    price: rand(4 ** 4)+101
  )
end

#*************Create stock where warehouse is Mumbai*************

warhouse1 = WareHouse.find_by(name: 'Mumbai')

Product.all.each do |product|
  num = rand(3 ** 3)
  Stock.create(
    product_id: product.id,
    ware_house_id: warhouse1.id,
    item_count: num + 30,
    low_item_threshold: num + 5
  )
end

#*******************************************************************

#*************Create stock where warehouse is Bangalore*************

warhouse2 = WareHouse.find_by(name: 'Bangalore')

Product.first(20).each do |product|
  num = rand(3 ** 3)
  Stock.create(
    product_id: product.id,
    ware_house_id: warhouse2.id,
    item_count: num + 5,
    low_item_threshold: num + 10
  )
end

Product.last(40).each do |product|
  num = rand(3 ** 3)
  Stock.create(
    product_id: product.id,
    ware_house_id: warhouse2.id,
    item_count: num + 15,
    low_item_threshold: num + 5
  )
end

#*******************************************************************

#*************Create stock where warehouse is New Delhi*************

warhouse3 = WareHouse.find_by(name: 'New Delhi')

Product.first(30).each do |product|
  num = rand(3 ** 3)
  Stock.create(
    product_id: product.id,
    ware_house_id: warhouse3.id,
    item_count: num + 5,
    low_item_threshold: num + 10
  )
end

Product.last(30).each do |product|
  num = rand(3 ** 3)
  Stock.create(
    product_id: product.id,
    ware_house_id: warhouse3.id,
    item_count: num + 15,
    low_item_threshold: num + 5
  )
end

#*******************************************************************
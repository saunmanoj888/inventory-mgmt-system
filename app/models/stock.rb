class Stock < ApplicationRecord

  validates_uniqueness_of :product_id, scope: :ware_house_id

  belongs_to :product
  belongs_to :ware_house

end

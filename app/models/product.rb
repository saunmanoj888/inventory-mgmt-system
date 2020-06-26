class Product < ApplicationRecord

  validates :sku_code, :name, :price, presence: true
  validates_uniqueness_of :sku_code, case_sensitive: true
  validates :sku_code, length: { is: 8 }

end

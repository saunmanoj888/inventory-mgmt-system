class WareHouse < ApplicationRecord

  validates :wh_code, :name, :pincode, :max_capacity, presence: true
  validates_uniqueness_of :wh_code, case_sensitive: true
  validates :wh_code, length: { in: 4..16 }

end

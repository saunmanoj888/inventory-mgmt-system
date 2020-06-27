class WareHouse < ApplicationRecord

  validates :wh_code, :name, :pincode, :max_capacity, presence: true
  validates_uniqueness_of :wh_code, case_sensitive: true
  validates :wh_code, length: { in: 4..16 }

  after_create :create_ware_house_stocks

  private

    def create_ware_house_stocks
      StocksCreationJob.perform_later(self.id)
    end

end

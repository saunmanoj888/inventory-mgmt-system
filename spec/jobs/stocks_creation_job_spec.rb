require 'rails_helper'

RSpec.describe StocksCreationJob, type: :job do

  let(:ware_house) { FactoryBot.create(:ware_house) }
  let(:product_mobile) { FactoryBot.create(:product) }
  let(:product_tv) { FactoryBot.create(:product, sku_code: 'TV123456', name: 'LEDTV') }

  describe "#perform_later" do

    before do
      product_mobile
      product_tv
      StocksCreationJob.perform_later(ware_house.id)
      Delayed::Job.last.invoke_job
    end

    it "creates stocks for the WareHouse" do
      expect(Stock.all.count).to eql(2)
    end

  end

end

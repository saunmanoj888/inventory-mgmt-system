require 'rails_helper'

RSpec.describe WareHouse, type: :model do

  let(:ware_house) { FactoryBot.create(:ware_house) }
  let(:product_mobile) { FactoryBot.create(:product) }
  let(:product_tv) { FactoryBot.create(:product, sku_code: 'TV123456', name: 'LEDTV') }

  context 'Validations' do
    it { should validate_presence_of(:wh_code) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:pincode) }
    it { should validate_presence_of(:max_capacity) }
    it { should validate_uniqueness_of(:wh_code).ignoring_case_sensitivity }
    it { should validate_length_of(:wh_code).is_at_least(4).is_at_most(16) }
  end

  context 'Instance methods' do

    describe '#create_ware_house_stocks' do
      context 'When a new WareHouse is created' do

        before do
          product_mobile
          product_tv
          ware_house
        end

        it 'should create delayed job entry to create stocks for the warehouse' do
          expect(Delayed::Job.last.handler).to include("StocksCreationJob")
        end

      end
    end

  end

end

require 'rails_helper'

RSpec.describe Stock, type: :model do

  context 'Validations' do
    it { should validate_uniqueness_of(:product_id).scoped_to(:ware_house_id) }
  end

  context 'Association' do
    it { should belong_to(:product) }
    it { should belong_to(:ware_house) }
  end

end

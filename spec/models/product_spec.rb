require 'rails_helper'

RSpec.describe Product, type: :model do

  context 'Validations' do
    it { should validate_presence_of(:sku_code) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:price) }
    it { should validate_uniqueness_of(:sku_code).ignoring_case_sensitivity }
    it { should validate_length_of(:sku_code).is_equal_to(8) }
  end

end
